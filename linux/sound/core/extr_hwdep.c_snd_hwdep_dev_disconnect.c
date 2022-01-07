
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_hwdep {int open_mutex; int list; int dev; int device; int card; int oss_type; scalar_t__ ossreg; int open_wait; } ;
struct snd_device {struct snd_hwdep* device_data; } ;


 int EINVAL ;
 int ENXIO ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int register_mutex ;
 scalar_t__ snd_BUG_ON (int) ;
 struct snd_hwdep* snd_hwdep_search (int ,int ) ;
 int snd_unregister_device (int *) ;
 int snd_unregister_oss_device (int ,int ,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static int snd_hwdep_dev_disconnect(struct snd_device *device)
{
 struct snd_hwdep *hwdep = device->device_data;

 if (snd_BUG_ON(!hwdep))
  return -ENXIO;
 mutex_lock(&register_mutex);
 if (snd_hwdep_search(hwdep->card, hwdep->device) != hwdep) {
  mutex_unlock(&register_mutex);
  return -EINVAL;
 }
 mutex_lock(&hwdep->open_mutex);
 wake_up(&hwdep->open_wait);




 snd_unregister_device(&hwdep->dev);
 list_del_init(&hwdep->list);
 mutex_unlock(&hwdep->open_mutex);
 mutex_unlock(&register_mutex);
 return 0;
}
