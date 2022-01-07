
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtgenmsg {int dummy; } ;
typedef int s32 ;


 int NLMSG_ALIGN (int) ;
 int nla_total_size (int) ;

__attribute__((used)) static int rtnl_net_get_size(void)
{
 return NLMSG_ALIGN(sizeof(struct rtgenmsg))
        + nla_total_size(sizeof(s32))
        + nla_total_size(sizeof(s32))
        ;
}
