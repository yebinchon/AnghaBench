
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct test_config {int test_case; } ;
struct kmod_test_device_info {int need_mod_put; TYPE_1__* fs_sync; struct kmod_test_device* test_dev; } ;
struct kmod_test_device {struct test_config config; } ;
struct TYPE_2__ {int owner; } ;


 int BUG () ;


 int module_put (int ) ;

__attribute__((used)) static void test_kmod_put_module(struct kmod_test_device_info *info)
{
 struct kmod_test_device *test_dev = info->test_dev;
 struct test_config *config = &test_dev->config;

 if (!info->need_mod_put)
  return;

 switch (config->test_case) {
 case 129:
  break;
 case 128:
  if (info && info->fs_sync && info->fs_sync->owner)
   module_put(info->fs_sync->owner);
  break;
 default:
  BUG();
 }

 info->need_mod_put = 1;
}
