
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_device {struct azx* device_data; } ;
struct TYPE_2__ {int shutdown; } ;
struct azx {TYPE_1__ bus; } ;



__attribute__((used)) static int hda_tegra_dev_disconnect(struct snd_device *device)
{
 struct azx *chip = device->device_data;

 chip->bus.shutdown = 1;
 return 0;
}
