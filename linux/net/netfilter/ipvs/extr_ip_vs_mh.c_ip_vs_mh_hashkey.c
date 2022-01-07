
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v ;
union nf_inet_addr {int ip; int* ip6; } ;
typedef int hsiphash_key_t ;
typedef int __be32 ;
typedef int __be16 ;


 int AF_INET6 ;
 unsigned int hsiphash (unsigned int*,int,int *) ;
 unsigned int ntohl (int) ;
 unsigned int ntohs (int ) ;

__attribute__((used)) static inline unsigned int
ip_vs_mh_hashkey(int af, const union nf_inet_addr *addr,
   __be16 port, hsiphash_key_t *key, unsigned int offset)
{
 unsigned int v;
 __be32 addr_fold = addr->ip;






 v = (offset + ntohs(port) + ntohl(addr_fold));
 return hsiphash(&v, sizeof(v), key);
}
