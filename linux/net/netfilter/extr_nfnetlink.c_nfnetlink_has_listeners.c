
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int nfnl; } ;


 int netlink_has_listeners (int ,unsigned int) ;

int nfnetlink_has_listeners(struct net *net, unsigned int group)
{
 return netlink_has_listeners(net->nfnl, group);
}
