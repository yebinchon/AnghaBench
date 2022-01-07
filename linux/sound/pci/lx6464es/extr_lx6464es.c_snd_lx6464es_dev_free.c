
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {int device_data; } ;


 int snd_lx6464es_free (int ) ;

__attribute__((used)) static int snd_lx6464es_dev_free(struct snd_device *device)
{
 return snd_lx6464es_free(device->device_data);
}
