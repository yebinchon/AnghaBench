
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtgenmsg {int dummy; } ;


 size_t NLMSG_ALIGN (int) ;
 size_t nla_total_size (size_t) ;

__attribute__((used)) static size_t igmpmsg_netlink_msgsize(size_t payloadlen)
{
 size_t len =
  NLMSG_ALIGN(sizeof(struct rtgenmsg))
  + nla_total_size(1)
  + nla_total_size(4)
  + nla_total_size(4)
  + nla_total_size(4)

  + nla_total_size(payloadlen)
  ;

 return len;
}
