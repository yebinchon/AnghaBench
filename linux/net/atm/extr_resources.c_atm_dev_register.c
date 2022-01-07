
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct atmdev_ops {int dummy; } ;
struct atm_dev {int number; unsigned long flags; unsigned long stats; int dev_list; int refcnt; struct atmdev_ops const* ops; } ;


 struct atm_dev* __alloc_atm_dev (char const*) ;
 struct atm_dev* __atm_dev_lookup (int) ;
 int atm_dev_mutex ;
 int atm_dev_put (struct atm_dev*) ;
 int atm_devs ;
 int atm_proc_dev_deregister (struct atm_dev*) ;
 scalar_t__ atm_proc_dev_register (struct atm_dev*) ;
 scalar_t__ atm_register_sysfs (struct atm_dev*,struct device*) ;
 int kfree (struct atm_dev*) ;
 int list_add_tail (int *,int *) ;
 int memset (unsigned long*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,char const*) ;
 int refcount_set (int *,int) ;

struct atm_dev *atm_dev_register(const char *type, struct device *parent,
     const struct atmdev_ops *ops, int number,
     unsigned long *flags)
{
 struct atm_dev *dev, *inuse;

 dev = __alloc_atm_dev(type);
 if (!dev) {
  pr_err("no space for dev %s\n", type);
  return ((void*)0);
 }
 mutex_lock(&atm_dev_mutex);
 if (number != -1) {
  inuse = __atm_dev_lookup(number);
  if (inuse) {
   atm_dev_put(inuse);
   mutex_unlock(&atm_dev_mutex);
   kfree(dev);
   return ((void*)0);
  }
  dev->number = number;
 } else {
  dev->number = 0;
  while ((inuse = __atm_dev_lookup(dev->number))) {
   atm_dev_put(inuse);
   dev->number++;
  }
 }

 dev->ops = ops;
 if (flags)
  dev->flags = *flags;
 else
  memset(&dev->flags, 0, sizeof(dev->flags));
 memset(&dev->stats, 0, sizeof(dev->stats));
 refcount_set(&dev->refcnt, 1);

 if (atm_proc_dev_register(dev) < 0) {
  pr_err("atm_proc_dev_register failed for dev %s\n", type);
  goto out_fail;
 }

 if (atm_register_sysfs(dev, parent) < 0) {
  pr_err("atm_register_sysfs failed for dev %s\n", type);
  atm_proc_dev_deregister(dev);
  goto out_fail;
 }

 list_add_tail(&dev->dev_list, &atm_devs);

out:
 mutex_unlock(&atm_dev_mutex);
 return dev;

out_fail:
 kfree(dev);
 dev = ((void*)0);
 goto out;
}
