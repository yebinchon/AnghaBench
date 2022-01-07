
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;
struct ifla_cacheinfo {int dummy; } ;


 int DEVCONF_MAX ;
 int ICMP6_MIB_MAX ;
 int IPSTATS_MIB_MAX ;
 size_t nla_total_size (int) ;

__attribute__((used)) static inline size_t inet6_ifla6_size(void)
{
 return nla_total_size(4)
      + nla_total_size(sizeof(struct ifla_cacheinfo))
      + nla_total_size(DEVCONF_MAX * 4)
      + nla_total_size(IPSTATS_MIB_MAX * 8)
      + nla_total_size(ICMP6_MIB_MAX * 8)
      + nla_total_size(sizeof(struct in6_addr))
      + nla_total_size(1)
      + 0;
}
