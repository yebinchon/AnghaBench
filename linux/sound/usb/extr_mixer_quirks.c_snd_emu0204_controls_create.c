
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_interface {int dummy; } ;


 int add_single_ctl_with_resume (struct usb_mixer_interface*,int ,int ,int *,int *) ;
 int snd_emu0204_ch_switch_resume ;
 int snd_emu0204_control ;

__attribute__((used)) static int snd_emu0204_controls_create(struct usb_mixer_interface *mixer)
{
 return add_single_ctl_with_resume(mixer, 0,
       snd_emu0204_ch_switch_resume,
       &snd_emu0204_control, ((void*)0));
}
