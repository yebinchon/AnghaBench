
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tnum {int mask; int value; } ;



bool tnum_in(struct tnum a, struct tnum b)
{
 if (b.mask & ~a.mask)
  return 0;
 b.value &= ~a.mask;
 return a.value == b.value;
}
