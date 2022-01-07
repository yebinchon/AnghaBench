
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_config {int test_fs; } ;


 int GFP_KERNEL ;
 int __kstrncpy (int *,char const*,size_t,int ) ;

__attribute__((used)) static int config_copy_test_fs(struct test_config *config, const char *name,
          size_t count)
{
 return __kstrncpy(&config->test_fs, name, count, GFP_KERNEL);
}
