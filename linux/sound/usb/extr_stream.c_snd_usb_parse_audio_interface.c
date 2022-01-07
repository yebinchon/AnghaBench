
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_audio {int dummy; } ;


 int __snd_usb_parse_audio_interface (struct snd_usb_audio*,int,int*,int) ;

int snd_usb_parse_audio_interface(struct snd_usb_audio *chip, int iface_no)
{
 int err;
 bool has_non_pcm = 0;


 err = __snd_usb_parse_audio_interface(chip, iface_no, &has_non_pcm, 0);
 if (err < 0)
  return err;

 if (has_non_pcm) {

  err = __snd_usb_parse_audio_interface(chip, iface_no, &has_non_pcm, 1);
  if (err < 0)
   return err;
 }

 return 0;
}
