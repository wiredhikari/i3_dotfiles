# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename /home/$USER/.zshrc

autoload -Uz compinit
compinit
# End of lines added by compinstall
alias l="ls -alh --color=tty"
alias ls="ls --color=tty"
alias c="clear"
alias n="nvim"
alias cpy="xclip -sel clip"
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# export FILTER_BRANCH_SQUELCH_WARNING=1

## For japanese input
# export GTK_IM_MODULE='fcitx'
# export QT_IM_MODULE='fcitx'
# export SDL_IM_MODULE='fcitx'
# export XMODIFIERS='@im=fcitx'

export EDITOR='nvim'

## For Linux From Scratch
# export LFS=/mnt/lfs

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.config/p10k.zsh ]] || source ~/.config/p10k.zsh


export PATH=/home/$USER/.local/bin:$PATH
# export PATH=/home/lain/.emacs.d/bin:$PATH

# Keyboard Bindings
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char
bindkey  ";5D"  backward-word
bindkey  ";5C"  forward-word

# Flutter/Android
# export PATH=/home/lain/android/flutter/bin:$PATH
# export PATH=/home/lain/android/android-studio/bin:$PATH
# export ANDROID_HOME="/home/lain/android/sdk"
# export ANDROID_SDK="/home/lain/android/sdk"
# export PATH=$ANDROID_SDK/emulator:$ANDROID_SDK/tools:$PATH


export GPG_TTY=$(tty)

