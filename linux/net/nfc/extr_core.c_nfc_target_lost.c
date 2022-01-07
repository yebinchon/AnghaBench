
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nfc_target {scalar_t__ idx; } ;
struct nfc_dev {int n_targets; int dev; struct nfc_target* targets; int * active_target; int targets_generation; } ;


 int EINVAL ;
 int dev_name (int *) ;
 int device_lock (int *) ;
 int device_unlock (int *) ;
 int kfree (struct nfc_target*) ;
 int memcpy (struct nfc_target*,struct nfc_target*,int) ;
 int nfc_genl_target_lost (struct nfc_dev*,scalar_t__) ;
 int pr_debug (char*,int ,scalar_t__) ;

int nfc_target_lost(struct nfc_dev *dev, u32 target_idx)
{
 struct nfc_target *tg;
 int i;

 pr_debug("dev_name %s n_target %d\n", dev_name(&dev->dev), target_idx);

 device_lock(&dev->dev);

 for (i = 0; i < dev->n_targets; i++) {
  tg = &dev->targets[i];
  if (tg->idx == target_idx)
   break;
 }

 if (i == dev->n_targets) {
  device_unlock(&dev->dev);
  return -EINVAL;
 }

 dev->targets_generation++;
 dev->n_targets--;
 dev->active_target = ((void*)0);

 if (dev->n_targets) {
  memcpy(&dev->targets[i], &dev->targets[i + 1],
         (dev->n_targets - i) * sizeof(struct nfc_target));
 } else {
  kfree(dev->targets);
  dev->targets = ((void*)0);
 }

 device_unlock(&dev->dev);

 nfc_genl_target_lost(dev, target_idx);

 return 0;
}
