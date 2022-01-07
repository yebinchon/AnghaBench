
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;


 int ffs (scalar_t__) ;

__attribute__((used)) static inline int xfs_lowbit64(uint64_t v)
{
 uint32_t w = (uint32_t)v;
 int n = 0;

 if (w) {
  n = ffs(w);
 } else {
  w = (uint32_t)(v >> 32);
  if (w) {
   n = ffs(w);
   if (n)
    n += 32;
  }
 }
 return n - 1;
}
