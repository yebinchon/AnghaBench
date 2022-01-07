
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __test_cycle (unsigned int) ;

__attribute__((used)) static int test_cycle(unsigned int ncpus)
{
 unsigned int n;
 int ret;

 for (n = 2; n <= ncpus + 1; n++) {
  ret = __test_cycle(n);
  if (ret)
   return ret;
 }

 return 0;
}
