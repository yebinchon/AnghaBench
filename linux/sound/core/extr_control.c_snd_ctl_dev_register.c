
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {struct snd_card* device_data; } ;
struct snd_card {int ctl_dev; } ;


 int SNDRV_DEVICE_TYPE_CONTROL ;
 int snd_ctl_f_ops ;
 int snd_register_device (int ,struct snd_card*,int,int *,struct snd_card*,int *) ;

__attribute__((used)) static int snd_ctl_dev_register(struct snd_device *device)
{
 struct snd_card *card = device->device_data;

 return snd_register_device(SNDRV_DEVICE_TYPE_CONTROL, card, -1,
       &snd_ctl_f_ops, card, &card->ctl_dev);
}
