
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_trident {int dummy; } ;
struct snd_device {struct snd_trident* device_data; } ;


 int snd_trident_free (struct snd_trident*) ;

__attribute__((used)) static int snd_trident_dev_free(struct snd_device *device)
{
 struct snd_trident *trident = device->device_data;
 return snd_trident_free(trident);
}
