
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; int sk; } ;
struct netlink_callback {int* args; TYPE_1__* nlh; int skb; } ;
struct net {int dummy; } ;
struct TYPE_4__ {int portid; } ;
struct TYPE_3__ {int nlmsg_seq; } ;


 TYPE_2__ NETLINK_CB (int ) ;
 int _smc_pnet_dump (struct net*,struct sk_buff*,int ,int ,int *,int) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int smc_pnet_dump(struct sk_buff *skb, struct netlink_callback *cb)
{
 struct net *net = sock_net(skb->sk);
 int idx;

 idx = _smc_pnet_dump(net, skb, NETLINK_CB(cb->skb).portid,
        cb->nlh->nlmsg_seq, ((void*)0), cb->args[0]);

 cb->args[0] = idx;
 return skb->len;
}
