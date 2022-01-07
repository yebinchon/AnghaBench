
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int max_pkg_num ;

void for_packages(unsigned long long pkg_set, int (func)(int))
{
 int pkg_num;

 for (pkg_num = 0; pkg_num <= max_pkg_num; ++pkg_num) {
  if (pkg_set & (1UL << pkg_num))
   func(pkg_num);
 }
}
