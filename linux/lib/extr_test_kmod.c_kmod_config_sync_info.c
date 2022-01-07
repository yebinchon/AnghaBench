
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_config {int num_threads; } ;
struct kmod_test_device_info {int dummy; } ;
struct kmod_test_device {int info; struct test_config config; } ;


 int ENOMEM ;
 int array_size (int,int ) ;
 int free_test_dev_info (struct kmod_test_device*) ;
 int vzalloc (int ) ;

__attribute__((used)) static int kmod_config_sync_info(struct kmod_test_device *test_dev)
{
 struct test_config *config = &test_dev->config;

 free_test_dev_info(test_dev);
 test_dev->info =
  vzalloc(array_size(sizeof(struct kmod_test_device_info),
       config->num_threads));
 if (!test_dev->info)
  return -ENOMEM;

 return 0;
}
