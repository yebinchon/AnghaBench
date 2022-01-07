
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union nf_inet_addr {int ip; int* ip6; } ;
typedef int __be32 ;
typedef int __be16 ;


 int AF_INET6 ;
 unsigned int IP_VS_RTAB_BITS ;
 unsigned int IP_VS_RTAB_MASK ;
 unsigned int ntohl (int) ;
 unsigned int ntohs (int ) ;

__attribute__((used)) static inline unsigned int ip_vs_rs_hashkey(int af,
         const union nf_inet_addr *addr,
         __be16 port)
{
 unsigned int porth = ntohs(port);
 __be32 addr_fold = addr->ip;







 return (ntohl(addr_fold)^(porth>>IP_VS_RTAB_BITS)^porth)
  & IP_VS_RTAB_MASK;
}
