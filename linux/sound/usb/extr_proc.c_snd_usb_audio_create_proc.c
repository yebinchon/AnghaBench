
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_audio {int card; } ;


 int proc_audio_usbbus_read ;
 int proc_audio_usbid_read ;
 int snd_card_ro_proc_new (int ,char*,struct snd_usb_audio*,int ) ;

void snd_usb_audio_create_proc(struct snd_usb_audio *chip)
{
 snd_card_ro_proc_new(chip->card, "usbbus", chip,
        proc_audio_usbbus_read);
 snd_card_ro_proc_new(chip->card, "usbid", chip,
        proc_audio_usbid_read);
}
