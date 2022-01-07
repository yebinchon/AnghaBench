
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union nf_inet_addr {int ip; int* ip6; } ;
typedef int __be32 ;


 int AF_INET6 ;
 int IP_VS_LBLC_TAB_BITS ;
 unsigned int hash_32 (int ,int ) ;
 int ntohl (int) ;

__attribute__((used)) static inline unsigned int
ip_vs_lblc_hashkey(int af, const union nf_inet_addr *addr)
{
 __be32 addr_fold = addr->ip;






 return hash_32(ntohl(addr_fold), IP_VS_LBLC_TAB_BITS);
}
