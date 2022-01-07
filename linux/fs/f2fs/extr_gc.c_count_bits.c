
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ test_bit (int ,unsigned long const*) ;

__attribute__((used)) static unsigned int count_bits(const unsigned long *addr,
    unsigned int offset, unsigned int len)
{
 unsigned int end = offset + len, sum = 0;

 while (offset < end) {
  if (test_bit(offset++, addr))
   ++sum;
 }
 return sum;
}
