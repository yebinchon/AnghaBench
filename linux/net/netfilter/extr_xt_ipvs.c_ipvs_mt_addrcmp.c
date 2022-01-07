
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union nf_inet_addr {int ip; int in6; } ;


 unsigned int NFPROTO_IPV4 ;
 unsigned int NFPROTO_IPV6 ;
 scalar_t__ ipv6_masked_addr_cmp (int *,int *,int *) ;

__attribute__((used)) static bool ipvs_mt_addrcmp(const union nf_inet_addr *kaddr,
       const union nf_inet_addr *uaddr,
       const union nf_inet_addr *umask,
       unsigned int l3proto)
{
 if (l3proto == NFPROTO_IPV4)
  return ((kaddr->ip ^ uaddr->ip) & umask->ip) == 0;





 else
  return 0;
}
