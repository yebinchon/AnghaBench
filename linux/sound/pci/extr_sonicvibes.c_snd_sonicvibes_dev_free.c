
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sonicvibes {int dummy; } ;
struct snd_device {struct sonicvibes* device_data; } ;


 int snd_sonicvibes_free (struct sonicvibes*) ;

__attribute__((used)) static int snd_sonicvibes_dev_free(struct snd_device *device)
{
 struct sonicvibes *sonic = device->device_data;
 return snd_sonicvibes_free(sonic);
}
