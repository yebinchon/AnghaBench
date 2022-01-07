
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_interface {int dummy; } ;


 int add_single_ctl_with_resume (struct usb_mixer_interface*,int ,int ,int *,int *) ;
 int snd_mbox1_switch ;
 int snd_mbox1_switch_resume ;

__attribute__((used)) static int snd_mbox1_create_sync_switch(struct usb_mixer_interface *mixer)
{
 return add_single_ctl_with_resume(mixer, 0,
       snd_mbox1_switch_resume,
       &snd_mbox1_switch, ((void*)0));
}
