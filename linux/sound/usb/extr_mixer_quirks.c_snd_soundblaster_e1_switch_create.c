
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_interface {int dummy; } ;


 int add_single_ctl_with_resume (struct usb_mixer_interface*,int ,int ,int *,int *) ;
 int snd_soundblaster_e1_input_switch ;
 int snd_soundblaster_e1_switch_resume ;

__attribute__((used)) static int snd_soundblaster_e1_switch_create(struct usb_mixer_interface *mixer)
{
 return add_single_ctl_with_resume(mixer, 0,
       snd_soundblaster_e1_switch_resume,
       &snd_soundblaster_e1_input_switch,
       ((void*)0));
}
