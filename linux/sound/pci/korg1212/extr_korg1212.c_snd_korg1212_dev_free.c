
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_korg1212 {int dummy; } ;
struct snd_device {struct snd_korg1212* device_data; } ;


 int K1212_DEBUG_PRINTK (char*) ;
 int snd_korg1212_free (struct snd_korg1212*) ;

__attribute__((used)) static int snd_korg1212_dev_free(struct snd_device *device)
{
        struct snd_korg1212 *korg1212 = device->device_data;
        K1212_DEBUG_PRINTK("K1212_DEBUG: Freeing device\n");
 return snd_korg1212_free(korg1212);
}
