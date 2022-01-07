
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net {int nfnl; } ;


 int netlink_set_err (int ,int ,int ,int) ;

int nfnetlink_set_err(struct net *net, u32 portid, u32 group, int error)
{
 return netlink_set_err(net->nfnl, portid, group, error);
}
