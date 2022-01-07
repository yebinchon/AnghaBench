
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct func_map {scalar_t__ addr; } ;



__attribute__((used)) static int func_bcmp(const void *a, const void *b)
{
 const struct func_map *fa = a;
 const struct func_map *fb = b;

 if ((fa->addr == fb->addr) ||

     (fa->addr > fb->addr &&
      fa->addr < (fb+1)->addr))
  return 0;

 if (fa->addr < fb->addr)
  return -1;

 return 1;
}
