
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_audio {int setup; int dev; } ;


 int MAUDIO_SET ;
 int MAUDIO_SET_24B ;
 int MAUDIO_SET_96K ;
 int MAUDIO_SET_DI ;
 int usb_audio_dbg (struct snd_usb_audio*,char*,int,int,int) ;
 int usb_set_interface (int ,int,int ) ;

__attribute__((used)) static int fasttrackpro_skip_setting_quirk(struct snd_usb_audio *chip,
        int iface, int altno)
{



 usb_set_interface(chip->dev, iface, 0);




 if (chip->setup & (MAUDIO_SET | MAUDIO_SET_24B)) {
  if (chip->setup & MAUDIO_SET_96K) {
   if (altno != 3 && altno != 6)
    return 1;
  } else if (chip->setup & MAUDIO_SET_DI) {
   if (iface == 4)
    return 1;
   if (altno != 2 && altno != 5)
    return 1;
  } else {
   if (iface == 5)
    return 1;
   if (altno != 2 && altno != 5)
    return 1;
  }
 } else {

  if (altno != 1)
   return 1;
 }

 usb_audio_dbg(chip,
      "using altsetting %d for interface %d config %d\n",
      altno, iface, chip->setup);
 return 0;
}
