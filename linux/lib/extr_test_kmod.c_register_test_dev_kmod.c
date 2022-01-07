
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int this_device; } ;
struct kmod_test_device {int dev; int list; TYPE_1__ misc_dev; } ;


 scalar_t__ INT_MAX ;
 struct kmod_test_device* alloc_test_dev_kmod (scalar_t__) ;
 int dev_info (int ,char*) ;
 int free_test_dev_kmod (struct kmod_test_device*) ;
 int list_add_tail (int *,int *) ;
 int misc_register (TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ num_test_devs ;
 int pr_err (char*,...) ;
 int reg_dev_mutex ;
 int reg_test_devs ;

__attribute__((used)) static struct kmod_test_device *register_test_dev_kmod(void)
{
 struct kmod_test_device *test_dev = ((void*)0);
 int ret;

 mutex_lock(&reg_dev_mutex);


 if (num_test_devs + 1 == INT_MAX) {
  pr_err("reached limit of number of test devices\n");
  goto out;
 }

 test_dev = alloc_test_dev_kmod(num_test_devs);
 if (!test_dev)
  goto out;

 ret = misc_register(&test_dev->misc_dev);
 if (ret) {
  pr_err("could not register misc device: %d\n", ret);
  free_test_dev_kmod(test_dev);
  goto out;
 }

 test_dev->dev = test_dev->misc_dev.this_device;
 list_add_tail(&test_dev->list, &reg_test_devs);
 dev_info(test_dev->dev, "interface ready\n");

 num_test_devs++;

out:
 mutex_unlock(&reg_dev_mutex);

 return test_dev;

}
