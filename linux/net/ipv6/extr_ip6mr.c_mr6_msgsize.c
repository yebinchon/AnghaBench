
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnexthop {int dummy; } ;
struct rtmsg {int dummy; } ;
struct rta_mfc_stats {int dummy; } ;
struct in6_addr {int dummy; } ;


 int NLA_ALIGN (int) ;
 size_t NLMSG_ALIGN (int) ;
 size_t nla_total_size (int) ;
 size_t nla_total_size_64bit (int) ;

__attribute__((used)) static int mr6_msgsize(bool unresolved, int maxvif)
{
 size_t len =
  NLMSG_ALIGN(sizeof(struct rtmsg))
  + nla_total_size(4)
  + nla_total_size(sizeof(struct in6_addr))
  + nla_total_size(sizeof(struct in6_addr))
  ;

 if (!unresolved)
  len = len
        + nla_total_size(4)
        + nla_total_size(0)
        + maxvif * NLA_ALIGN(sizeof(struct rtnexthop))

        + nla_total_size_64bit(sizeof(struct rta_mfc_stats))
  ;

 return len;
}
