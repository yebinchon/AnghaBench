
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdtable {unsigned int max_fds; int open_fds; int full_fds_bits; } ;


 unsigned int BITS_PER_LONG ;
 unsigned int find_next_zero_bit (int ,unsigned int,unsigned int) ;

__attribute__((used)) static unsigned int find_next_fd(struct fdtable *fdt, unsigned int start)
{
 unsigned int maxfd = fdt->max_fds;
 unsigned int maxbit = maxfd / BITS_PER_LONG;
 unsigned int bitbit = start / BITS_PER_LONG;

 bitbit = find_next_zero_bit(fdt->full_fds_bits, maxbit, bitbit) * BITS_PER_LONG;
 if (bitbit > maxfd)
  return maxfd;
 if (bitbit > start)
  start = bitbit;
 return find_next_zero_bit(fdt->open_fds, maxfd, start);
}
