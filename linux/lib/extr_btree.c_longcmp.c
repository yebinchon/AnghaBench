
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int longcmp(const unsigned long *l1, const unsigned long *l2, size_t n)
{
 size_t i;

 for (i = 0; i < n; i++) {
  if (l1[i] < l2[i])
   return -1;
  if (l1[i] > l2[i])
   return 1;
 }
 return 0;
}
