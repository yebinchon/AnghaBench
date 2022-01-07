
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {struct cmipci* device_data; } ;
struct cmipci {int dummy; } ;


 int snd_cmipci_free (struct cmipci*) ;

__attribute__((used)) static int snd_cmipci_dev_free(struct snd_device *device)
{
 struct cmipci *cm = device->device_data;
 return snd_cmipci_free(cm);
}
