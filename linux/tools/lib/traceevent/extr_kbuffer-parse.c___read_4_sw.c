
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int __read_4_sw(void *ptr)
{
 unsigned int data = *(unsigned int *)ptr;
 unsigned int swap;

 swap = ((data & 0xffULL) << 24) |
  ((data & (0xffULL << 8)) << 8) |
  ((data & (0xffULL << 16)) >> 8) |
  ((data & (0xffULL << 24)) >> 24);

 return swap;
}
