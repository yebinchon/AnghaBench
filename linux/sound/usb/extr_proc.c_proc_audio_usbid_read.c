
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_audio {int usb_id; int shutdown; } ;
struct snd_info_entry {struct snd_usb_audio* private_data; } ;
struct snd_info_buffer {int dummy; } ;


 int USB_ID_PRODUCT (int ) ;
 int USB_ID_VENDOR (int ) ;
 int atomic_read (int *) ;
 int snd_iprintf (struct snd_info_buffer*,char*,int ,int ) ;

__attribute__((used)) static void proc_audio_usbid_read(struct snd_info_entry *entry, struct snd_info_buffer *buffer)
{
 struct snd_usb_audio *chip = entry->private_data;
 if (!atomic_read(&chip->shutdown))
  snd_iprintf(buffer, "%04x:%04x\n",
       USB_ID_VENDOR(chip->usb_id),
       USB_ID_PRODUCT(chip->usb_id));
}
