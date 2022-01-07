
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_hwdep {int dev; int (* private_free ) (struct snd_hwdep*) ;} ;
struct snd_device {struct snd_hwdep* device_data; } ;


 int put_device (int *) ;
 int stub1 (struct snd_hwdep*) ;

__attribute__((used)) static int snd_hwdep_dev_free(struct snd_device *device)
{
 struct snd_hwdep *hwdep = device->device_data;
 if (!hwdep)
  return 0;
 if (hwdep->private_free)
  hwdep->private_free(hwdep);
 put_device(&hwdep->dev);
 return 0;
}
