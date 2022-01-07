
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tipc_nl_msg {int seq; int portid; struct sk_buff* skb; } ;
struct sk_buff {int len; int sk; } ;
struct netlink_callback {int* args; TYPE_1__* nlh; int skb; } ;
struct net {int dummy; } ;
struct TYPE_4__ {int portid; } ;
struct TYPE_3__ {int nlmsg_seq; } ;


 TYPE_2__ NETLINK_CB (int ) ;
 int __tipc_nl_add_net (struct net*,struct tipc_nl_msg*) ;
 struct net* sock_net (int ) ;

int tipc_nl_net_dump(struct sk_buff *skb, struct netlink_callback *cb)
{
 struct net *net = sock_net(skb->sk);
 int err;
 int done = cb->args[0];
 struct tipc_nl_msg msg;

 if (done)
  return 0;

 msg.skb = skb;
 msg.portid = NETLINK_CB(cb->skb).portid;
 msg.seq = cb->nlh->nlmsg_seq;

 err = __tipc_nl_add_net(net, &msg);
 if (err)
  goto out;

 done = 1;
out:
 cb->args[0] = done;

 return skb->len;
}
