
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_interface {int dummy; } ;


 int USB_MIXER_S16 ;
 int snd_create_std_mono_ctl (struct usb_mixer_interface*,unsigned int const,unsigned int const,unsigned int const,int const,char const*,int ) ;
 int snd_usb_mixer_vol_tlv ;

__attribute__((used)) static int snd_c400_create_effect_duration_ctl(struct usb_mixer_interface *mixer)
{
 static const char name[] = "Effect Duration";
 const unsigned int id = 0x43;
 const int val_type = USB_MIXER_S16;
 const unsigned int control = 4;
 const unsigned int cmask = 0;

 return snd_create_std_mono_ctl(mixer, id, control, cmask, val_type,
     name, snd_usb_mixer_vol_tlv);
}
