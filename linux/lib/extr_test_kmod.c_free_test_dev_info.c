
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmod_test_device {int * info; } ;


 int vfree (int *) ;

__attribute__((used)) static void free_test_dev_info(struct kmod_test_device *test_dev)
{
 vfree(test_dev->info);
 test_dev->info = ((void*)0);
}
