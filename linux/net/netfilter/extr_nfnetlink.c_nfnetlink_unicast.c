
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct net {int nfnl; } ;


 int netlink_unicast (int ,struct sk_buff*,int ,int) ;

int nfnetlink_unicast(struct sk_buff *skb, struct net *net, u32 portid,
        int flags)
{
 return netlink_unicast(net->nfnl, skb, portid, flags);
}
