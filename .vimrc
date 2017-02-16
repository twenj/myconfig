"基本配置
"================================================== 

set background=dark
colorscheme darkblue
let g:solarized_termcolors=256

"不产生备份文件
set nowrap
"行号
set number
"标记当前行
set cursorline
"显示工具条
set ruler
"搜索高亮显示
set hlsearch
"分割窗口等宽
set equalalways
"展开式菜单
set wildmenu
"显示命令
set showcmd
"编码集
set fileencoding=utf-8
"缩进风格
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab 
"聪明缩进
set autoindent
set smartindent
"聪明tab键
set smarttab
"聪明大小写
set smartcase
"提示栏模式
set laststatus=2
"disable Background Color Erase(解决TMUX背景色问题)
set t_ut= 
"删除键失灵
set backspace=2

"vim tab切换快捷键
map <C-t> :tabnew<CR>
map <S-h> :tabp<CR>
map <S-l> :tabn<CR>
"vim 分屏快捷键
map <C-_> :sp<CR>
map <C-\> :vs<CR>

"命令映射
cabbrev W w
cabbrev Q q
cabbrev WQ wq

inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space>

"插件配置
"==================================================

"NerdTree: 目录树
"更适合代码的目录树样式
let g:netrw_liststyle= 3 
cabbrev E e
nmap <F3> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == 'primary') | q | endif

"Tagbar: a outline addon
nmap <F8> :TagbarToggle<CR>
let g:Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let g:tagbar_left = 1
let g:tagbar_width = 30

"Emmet: html补全
let g:user_emmet_expandabbr_key = '<C-e>'
let g:use_emmet_complete_tag = 1

"EasyMotion: 参数 w,ge,t,j,k
let g:EasyMotion_leader_key = '<Leader>'

"AirLine
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"Dash
nmap <silent> <leader>d <Plug>DashSearch

" phpcd php代码补全
autocmd FileType php setlocal omnifunc=phpcd#CompletePHP
" source /root/.vim/tmap.vim

"Bundle 配置
"================================================== 
":BundleInstall 安装插件
":BundleInstall! 更新插件
":BundleClean 删除插件

set nocompatible
filetype off
 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"let Vundle manage Vundle  required! 
Plugin 'gmarik/Vundle.vim'

"My Plugins here:
Plugin 'ctags.vim'
Plugin 'majutsushi/tagbar'
"代码补全
Plugin 'gmarik/snipmate.vim'
"目录树
Plugin 'The-NERD-tree'
"牛逼的光标移动方式
Plugin 'EasyMotion'
"VIM % 符号匹配增强
Plugin 'tmhedberg/matchit'
"标签补全
Plugin 'mattn/emmet-vim'
"符号配对
Plugin 'Townk/vim-autoclose'
"Git工具
Plugin 'tpope/vim-fugitive'
"AirLine
Plugin 'bling/vim-airline'
"符号匹配操作,ds:删除，ysiw:插入，cs:修改 ,t=>tag
Plugin 'tpope/vim-surround'
"html5支持
Plugin 'othree/html5.vim'

Plugin 'altercation/vim-colors-solarized'

"iterm下vim光标样式修复
Plugin 'sjl/vitality.vim'
"Dash文档
Plugin 'rizzatti/dash.vim'
"Vim剪切板 shift ” + Y
Plugin 'vim-scripts/fakeclip'

Plugin 'avakhov/vim-yaml'

"php 代码补全
Plugin 'lvht/phpcd.vim', {'for': 'php', 'do': 'composer update'}
Plugin 'shawncplus/phpcomplete.vim'

call vundle#end()
"============================================

filetype plugin indent on     
"语法高亮
syntax on

autocmd Filetype html,css,xml setlocal ts=2 sw=2 expandtab

