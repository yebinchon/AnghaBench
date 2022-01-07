
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_interface {int dummy; } ;


 int add_single_ctl_with_resume (struct usb_mixer_interface*,int ,int ,int *,int *) ;
 int snd_xonar_u1_output_switch ;
 int snd_xonar_u1_switch_resume ;

__attribute__((used)) static int snd_xonar_u1_controls_create(struct usb_mixer_interface *mixer)
{
 return add_single_ctl_with_resume(mixer, 0,
       snd_xonar_u1_switch_resume,
       &snd_xonar_u1_output_switch, ((void*)0));
}
