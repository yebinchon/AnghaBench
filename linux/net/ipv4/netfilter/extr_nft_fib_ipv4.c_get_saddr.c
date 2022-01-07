
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be32 ;


 scalar_t__ ipv4_is_lbcast (int ) ;
 scalar_t__ ipv4_is_multicast (int ) ;
 scalar_t__ ipv4_is_zeronet (int ) ;

__attribute__((used)) static __be32 get_saddr(__be32 addr)
{
 if (ipv4_is_multicast(addr) || ipv4_is_lbcast(addr) ||
     ipv4_is_zeronet(addr))
  return 0;
 return addr;
}
