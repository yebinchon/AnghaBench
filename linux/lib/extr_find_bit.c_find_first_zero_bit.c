
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long BITS_PER_LONG ;
 scalar_t__ ffz (unsigned long const) ;
 unsigned long min (scalar_t__,unsigned long) ;

unsigned long find_first_zero_bit(const unsigned long *addr, unsigned long size)
{
 unsigned long idx;

 for (idx = 0; idx * BITS_PER_LONG < size; idx++) {
  if (addr[idx] != ~0UL)
   return min(idx * BITS_PER_LONG + ffz(addr[idx]), size);
 }

 return size;
}
