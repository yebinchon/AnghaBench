
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_config {scalar_t__ num_threads; } ;
struct kmod_test_device {scalar_t__ done; int kthreads_done; int dev; struct test_config config; } ;


 int complete (int *) ;
 int dev_dbg (int ,char*,scalar_t__) ;
 int dev_info (int ,char*,unsigned int) ;

__attribute__((used)) static void kmod_test_done_check(struct kmod_test_device *test_dev,
     unsigned int idx)
{
 struct test_config *config = &test_dev->config;

 test_dev->done++;
 dev_dbg(test_dev->dev, "Done thread count: %u\n", test_dev->done);

 if (test_dev->done == config->num_threads) {
  dev_info(test_dev->dev, "Done: %u threads have all run now\n",
    test_dev->done);
  dev_info(test_dev->dev, "Last thread to run: %u\n", idx);
  complete(&test_dev->kthreads_done);
 }
}
