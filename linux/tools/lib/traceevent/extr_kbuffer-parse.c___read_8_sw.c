
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned long long __read_8_sw(void *ptr)
{
 unsigned long long data = *(unsigned long long *)ptr;
 unsigned long long swap;

 swap = ((data & 0xffULL) << 56) |
  ((data & (0xffULL << 8)) << 40) |
  ((data & (0xffULL << 16)) << 24) |
  ((data & (0xffULL << 24)) << 8) |
  ((data & (0xffULL << 32)) >> 8) |
  ((data & (0xffULL << 40)) >> 24) |
  ((data & (0xffULL << 48)) >> 40) |
  ((data & (0xffULL << 56)) >> 56);

 return swap;
}
