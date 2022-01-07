
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline
int stackdepot_memcmp(const unsigned long *u1, const unsigned long *u2,
   unsigned int n)
{
 for ( ; n-- ; u1++, u2++) {
  if (*u1 != *u2)
   return 1;
 }
 return 0;
}
