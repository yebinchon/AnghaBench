
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int tomoyo_round2(size_t size)
{



 size_t bsize = 64;

 if (!size)
  return 0;
 while (size > bsize)
  bsize <<= 1;
 return bsize;
}
