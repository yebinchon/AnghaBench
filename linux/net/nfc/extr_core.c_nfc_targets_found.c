
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_target {scalar_t__ idx; } ;
struct nfc_dev {int polling; int n_targets; int dev; int * targets; int targets_generation; int target_next_idx; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int dev_name (int *) ;
 int device_lock (int *) ;
 int device_unlock (int *) ;
 int kfree (int *) ;
 int * kmemdup (struct nfc_target*,int,int ) ;
 int nfc_genl_targets_found (struct nfc_dev*) ;
 int pr_debug (char*,int ,int) ;

int nfc_targets_found(struct nfc_dev *dev,
        struct nfc_target *targets, int n_targets)
{
 int i;

 pr_debug("dev_name=%s n_targets=%d\n", dev_name(&dev->dev), n_targets);

 for (i = 0; i < n_targets; i++)
  targets[i].idx = dev->target_next_idx++;

 device_lock(&dev->dev);

 if (dev->polling == 0) {
  device_unlock(&dev->dev);
  return 0;
 }

 dev->polling = 0;

 dev->targets_generation++;

 kfree(dev->targets);
 dev->targets = ((void*)0);

 if (targets) {
  dev->targets = kmemdup(targets,
           n_targets * sizeof(struct nfc_target),
           GFP_ATOMIC);

  if (!dev->targets) {
   dev->n_targets = 0;
   device_unlock(&dev->dev);
   return -ENOMEM;
  }
 }

 dev->n_targets = n_targets;
 device_unlock(&dev->dev);

 nfc_genl_targets_found(dev);

 return 0;
}
