
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_hwdep {int ossreg; scalar_t__ oss_type; int dev; scalar_t__ device; int list; struct snd_card* card; } ;
struct snd_device {struct snd_hwdep* device_data; } ;
struct snd_card {int dummy; } ;


 int EBUSY ;
 int SNDRV_DEVICE_TYPE_HWDEP ;
 scalar_t__ SNDRV_OSS_DEVICE_TYPE_DMFM ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int register_mutex ;
 int snd_hwdep_devices ;
 int snd_hwdep_f_ops ;
 scalar_t__ snd_hwdep_search (struct snd_card*,scalar_t__) ;
 int snd_register_device (int ,struct snd_card*,scalar_t__,int *,struct snd_hwdep*,int *) ;
 scalar_t__ snd_register_oss_device (scalar_t__,struct snd_card*,scalar_t__,int *,struct snd_hwdep*) ;

__attribute__((used)) static int snd_hwdep_dev_register(struct snd_device *device)
{
 struct snd_hwdep *hwdep = device->device_data;
 struct snd_card *card = hwdep->card;
 int err;

 mutex_lock(&register_mutex);
 if (snd_hwdep_search(card, hwdep->device)) {
  mutex_unlock(&register_mutex);
  return -EBUSY;
 }
 list_add_tail(&hwdep->list, &snd_hwdep_devices);
 err = snd_register_device(SNDRV_DEVICE_TYPE_HWDEP,
      hwdep->card, hwdep->device,
      &snd_hwdep_f_ops, hwdep, &hwdep->dev);
 if (err < 0) {
  dev_err(&hwdep->dev, "unable to register\n");
  list_del(&hwdep->list);
  mutex_unlock(&register_mutex);
  return err;
 }
 mutex_unlock(&register_mutex);
 return 0;
}
