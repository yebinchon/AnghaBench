
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prefixmsg {int dummy; } ;
struct prefix_cacheinfo {int dummy; } ;
struct in6_addr {int dummy; } ;


 size_t NLMSG_ALIGN (int) ;
 size_t nla_total_size (int) ;

__attribute__((used)) static inline size_t inet6_prefix_nlmsg_size(void)
{
 return NLMSG_ALIGN(sizeof(struct prefixmsg))
        + nla_total_size(sizeof(struct in6_addr))
        + nla_total_size(sizeof(struct prefix_cacheinfo));
}
