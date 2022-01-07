
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union nf_inet_addr {int dummy; } nf_inet_addr ;
typedef int u8 ;


 int ip6_netmask (union nf_inet_addr*,int ) ;

__attribute__((used)) static inline void
hash_ip6_netmask(union nf_inet_addr *ip, u8 prefix)
{
 ip6_netmask(ip, prefix);
}
