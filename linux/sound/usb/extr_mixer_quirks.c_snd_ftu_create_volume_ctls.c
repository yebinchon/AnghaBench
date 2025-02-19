
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_interface {int dummy; } ;
typedef int name ;


 int USB_MIXER_S16 ;
 int snd_create_std_mono_ctl (struct usb_mixer_interface*,unsigned int const,unsigned int,unsigned int,int const,char*,int *) ;
 int snd_usb_mixer_vol_tlv ;
 int snprintf (char*,int,char*,int,int) ;

__attribute__((used)) static int snd_ftu_create_volume_ctls(struct usb_mixer_interface *mixer)
{
 char name[64];
 unsigned int control, cmask;
 int in, out, err;

 const unsigned int id = 5;
 const int val_type = USB_MIXER_S16;

 for (out = 0; out < 8; out++) {
  control = out + 1;
  for (in = 0; in < 8; in++) {
   cmask = 1 << in;
   snprintf(name, sizeof(name),
    "AIn%d - Out%d Capture Volume",
    in + 1, out + 1);
   err = snd_create_std_mono_ctl(mixer, id, control,
       cmask, val_type, name,
       &snd_usb_mixer_vol_tlv);
   if (err < 0)
    return err;
  }
  for (in = 8; in < 16; in++) {
   cmask = 1 << in;
   snprintf(name, sizeof(name),
    "DIn%d - Out%d Playback Volume",
    in - 7, out + 1);
   err = snd_create_std_mono_ctl(mixer, id, control,
       cmask, val_type, name,
       &snd_usb_mixer_vol_tlv);
   if (err < 0)
    return err;
  }
 }

 return 0;
}
