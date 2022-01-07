
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tnum {int value; int mask; } ;



bool tnum_is_aligned(struct tnum a, u64 size)
{
 if (!size)
  return 1;
 return !((a.value | a.mask) & (size - 1));
}
