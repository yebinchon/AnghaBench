
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_interface {int dummy; } ;


 int snd_ftu_create_effect_duration_ctl (struct usb_mixer_interface*) ;
 int snd_ftu_create_effect_feedback_ctl (struct usb_mixer_interface*) ;
 int snd_ftu_create_effect_return_ctls (struct usb_mixer_interface*) ;
 int snd_ftu_create_effect_send_ctls (struct usb_mixer_interface*) ;
 int snd_ftu_create_effect_switch (struct usb_mixer_interface*,int,int) ;
 int snd_ftu_create_effect_volume_ctl (struct usb_mixer_interface*) ;
 int snd_ftu_create_volume_ctls (struct usb_mixer_interface*) ;

__attribute__((used)) static int snd_ftu_create_mixer(struct usb_mixer_interface *mixer)
{
 int err;

 err = snd_ftu_create_volume_ctls(mixer);
 if (err < 0)
  return err;

 err = snd_ftu_create_effect_switch(mixer, 1, 6);
 if (err < 0)
  return err;

 err = snd_ftu_create_effect_volume_ctl(mixer);
 if (err < 0)
  return err;

 err = snd_ftu_create_effect_duration_ctl(mixer);
 if (err < 0)
  return err;

 err = snd_ftu_create_effect_feedback_ctl(mixer);
 if (err < 0)
  return err;

 err = snd_ftu_create_effect_return_ctls(mixer);
 if (err < 0)
  return err;

 err = snd_ftu_create_effect_send_ctls(mixer);
 if (err < 0)
  return err;

 return 0;
}
