
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union nf_inet_addr {int ip; int* ip6; } ;
typedef int __be32 ;
typedef int __be16 ;


 int AF_INET6 ;
 int IP_VS_SH_TAB_BITS ;
 unsigned int IP_VS_SH_TAB_MASK ;
 unsigned int hash_32 (scalar_t__,int ) ;
 scalar_t__ ntohl (int) ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static inline unsigned int
ip_vs_sh_hashkey(int af, const union nf_inet_addr *addr,
   __be16 port, unsigned int offset)
{
 __be32 addr_fold = addr->ip;






 return (offset + hash_32(ntohs(port) + ntohl(addr_fold),
     IP_VS_SH_TAB_BITS)) &
  IP_VS_SH_TAB_MASK;
}
