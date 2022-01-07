
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_ASSERT_VAL (char*,int) ;
 int is_kernel_module (char const*,int) ;
 int pr_debug (char*,char const*,int,char*) ;

__attribute__((used)) static int test_is_kernel_module(const char *path, int cpumode, bool expect)
{
 TEST_ASSERT_VAL("is_kernel_module",
   (!!is_kernel_module(path, cpumode)) == (!!expect));
 pr_debug("%s (cpumode: %d) - is_kernel_module: %s\n",
   path, cpumode, expect ? "true" : "false");
 return 0;
}
