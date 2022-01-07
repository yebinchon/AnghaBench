
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union nf_inet_addr {int ip; int* ip6; } ;
struct netns_ipvs {int dummy; } ;
typedef size_t __u32 ;
typedef int __be32 ;
typedef int __be16 ;


 int AF_INET6 ;
 unsigned int IP_VS_SVC_TAB_BITS ;
 unsigned int IP_VS_SVC_TAB_MASK ;
 size_t ntohl (int) ;
 unsigned int ntohs (int ) ;

__attribute__((used)) static inline unsigned int
ip_vs_svc_hashkey(struct netns_ipvs *ipvs, int af, unsigned int proto,
    const union nf_inet_addr *addr, __be16 port)
{
 unsigned int porth = ntohs(port);
 __be32 addr_fold = addr->ip;
 __u32 ahash;






 ahash = ntohl(addr_fold);
 ahash ^= ((size_t) ipvs >> 8);

 return (proto ^ ahash ^ (porth >> IP_VS_SVC_TAB_BITS) ^ porth) &
        IP_VS_SVC_TAB_MASK;
}
