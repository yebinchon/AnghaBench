
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu10k1 {int dummy; } ;
struct snd_device {struct snd_emu10k1* device_data; } ;


 int snd_emu10k1_free (struct snd_emu10k1*) ;

__attribute__((used)) static int snd_emu10k1_dev_free(struct snd_device *device)
{
 struct snd_emu10k1 *emu = device->device_data;
 return snd_emu10k1_free(emu);
}
