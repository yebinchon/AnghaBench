
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ymfpci {int dummy; } ;
struct snd_device {struct snd_ymfpci* device_data; } ;


 int snd_ymfpci_free (struct snd_ymfpci*) ;

__attribute__((used)) static int snd_ymfpci_dev_free(struct snd_device *device)
{
 struct snd_ymfpci *chip = device->device_data;
 return snd_ymfpci_free(chip);
}
