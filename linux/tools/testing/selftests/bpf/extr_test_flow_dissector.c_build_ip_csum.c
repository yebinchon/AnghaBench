
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint16_t ;


 scalar_t__ add_csum_hword (unsigned long const*,int) ;

__attribute__((used)) static uint16_t build_ip_csum(const uint16_t *start, int num_u16,
         unsigned long sum)
{
 sum += add_csum_hword(start, num_u16);

 while (sum >> 16)
  sum = (sum & 0xffff) + (sum >> 16);

 return ~sum;
}
