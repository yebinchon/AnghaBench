
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct net {int nfnl; } ;
typedef int gfp_t ;


 int nlmsg_notify (int ,struct sk_buff*,int ,unsigned int,int,int ) ;

int nfnetlink_send(struct sk_buff *skb, struct net *net, u32 portid,
     unsigned int group, int echo, gfp_t flags)
{
 return nlmsg_notify(net->nfnl, skb, portid, group, echo, flags);
}
