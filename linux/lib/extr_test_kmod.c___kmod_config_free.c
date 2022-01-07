
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_config {int * test_fs; int * test_driver; } ;


 int kfree_const (int *) ;

__attribute__((used)) static void __kmod_config_free(struct test_config *config)
{
 if (!config)
  return;

 kfree_const(config->test_driver);
 config->test_driver = ((void*)0);

 kfree_const(config->test_fs);
 config->test_fs = ((void*)0);
}
