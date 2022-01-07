
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __TEST_MTX_LAST ;
 int __test_mutex (int) ;

__attribute__((used)) static int test_mutex(void)
{
 int ret;
 int i;

 for (i = 0; i < __TEST_MTX_LAST; i++) {
  ret = __test_mutex(i);
  if (ret)
   return ret;
 }

 return 0;
}
