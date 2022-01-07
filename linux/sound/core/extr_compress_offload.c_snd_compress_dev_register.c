
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {struct snd_compr* device_data; } ;
struct snd_compr {int dev; int device; int card; int direction; int name; } ;


 int EBADFD ;
 int EINVAL ;
 int SNDRV_DEVICE_TYPE_COMPRESS ;
 int pr_debug (char*,int ,int ) ;
 int pr_err (char*,int) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_compr_file_ops ;
 int snd_register_device (int ,int ,int ,int *,struct snd_compr*,int *) ;

__attribute__((used)) static int snd_compress_dev_register(struct snd_device *device)
{
 int ret = -EINVAL;
 struct snd_compr *compr;

 if (snd_BUG_ON(!device || !device->device_data))
  return -EBADFD;
 compr = device->device_data;

 pr_debug("reg device %s, direction %d\n", compr->name,
   compr->direction);

 ret = snd_register_device(SNDRV_DEVICE_TYPE_COMPRESS,
      compr->card, compr->device,
      &snd_compr_file_ops, compr, &compr->dev);
 if (ret < 0) {
  pr_err("snd_register_device failed %d\n", ret);
  return ret;
 }
 return ret;

}
