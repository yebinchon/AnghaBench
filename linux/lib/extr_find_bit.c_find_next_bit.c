
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long _find_next_bit (unsigned long const*,int *,unsigned long,unsigned long,unsigned long) ;

unsigned long find_next_bit(const unsigned long *addr, unsigned long size,
       unsigned long offset)
{
 return _find_next_bit(addr, ((void*)0), size, offset, 0UL);
}
