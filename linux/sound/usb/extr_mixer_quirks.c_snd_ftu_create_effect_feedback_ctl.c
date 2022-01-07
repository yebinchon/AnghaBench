
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_interface {int dummy; } ;


 int USB_MIXER_U8 ;
 int snd_create_std_mono_ctl (struct usb_mixer_interface*,unsigned int const,unsigned int const,unsigned int const,int const,char const*,int *) ;

__attribute__((used)) static int snd_ftu_create_effect_feedback_ctl(struct usb_mixer_interface *mixer)
{
 static const char name[] = "Effect Feedback Volume";
 const unsigned int id = 6;
 const int val_type = USB_MIXER_U8;
 const unsigned int control = 4;
 const unsigned int cmask = 0;

 return snd_create_std_mono_ctl(mixer, id, control, cmask, val_type,
     name, ((void*)0));
}
