
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {struct snd_amd7930* device_data; } ;
struct snd_amd7930 {int dummy; } ;


 int snd_amd7930_free (struct snd_amd7930*) ;

__attribute__((used)) static int snd_amd7930_dev_free(struct snd_device *device)
{
 struct snd_amd7930 *amd = device->device_data;

 return snd_amd7930_free(amd);
}
