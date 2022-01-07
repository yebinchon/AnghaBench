
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * name; } ;
struct kmod_test_device {TYPE_1__ misc_dev; } ;


 int free_test_dev_info (struct kmod_test_device*) ;
 int kfree_const (int *) ;
 int kmod_config_free (struct kmod_test_device*) ;
 int vfree (struct kmod_test_device*) ;

__attribute__((used)) static void free_test_dev_kmod(struct kmod_test_device *test_dev)
{
 if (test_dev) {
  kfree_const(test_dev->misc_dev.name);
  test_dev->misc_dev.name = ((void*)0);
  free_test_dev_info(test_dev);
  kmod_config_free(test_dev);
  vfree(test_dev);
  test_dev = ((void*)0);
 }
}
