
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_usb_audio {TYPE_2__* dev; int shutdown; } ;
struct snd_info_entry {struct snd_usb_audio* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct TYPE_4__ {int devnum; TYPE_1__* bus; } ;
struct TYPE_3__ {int busnum; } ;


 int atomic_read (int *) ;
 int snd_iprintf (struct snd_info_buffer*,char*,int ,int ) ;

__attribute__((used)) static void proc_audio_usbbus_read(struct snd_info_entry *entry, struct snd_info_buffer *buffer)
{
 struct snd_usb_audio *chip = entry->private_data;
 if (!atomic_read(&chip->shutdown))
  snd_iprintf(buffer, "%03d/%03d\n", chip->dev->bus->busnum, chip->dev->devnum);
}
