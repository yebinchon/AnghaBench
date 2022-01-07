
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be32 ;


 int OVS_MASKED (int const,int const,int const) ;

__attribute__((used)) static void mask_ipv6_addr(const __be32 old[4], const __be32 addr[4],
      const __be32 mask[4], __be32 masked[4])
{
 masked[0] = OVS_MASKED(old[0], addr[0], mask[0]);
 masked[1] = OVS_MASKED(old[1], addr[1], mask[1]);
 masked[2] = OVS_MASKED(old[2], addr[2], mask[2]);
 masked[3] = OVS_MASKED(old[3], addr[3], mask[3]);
}
