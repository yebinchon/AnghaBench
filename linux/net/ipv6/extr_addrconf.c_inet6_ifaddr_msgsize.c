
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifaddrmsg {int dummy; } ;
struct ifa_cacheinfo {int dummy; } ;


 int NLMSG_ALIGN (int) ;
 int nla_total_size (int) ;

__attribute__((used)) static inline int inet6_ifaddr_msgsize(void)
{
 return NLMSG_ALIGN(sizeof(struct ifaddrmsg))
        + nla_total_size(16)
        + nla_total_size(16)
        + nla_total_size(sizeof(struct ifa_cacheinfo))
        + nla_total_size(4)
        + nla_total_size(4) ;
}
