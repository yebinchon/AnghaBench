
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tipc_nl_msg {int seq; int portid; struct sk_buff* skb; } ;
struct sk_buff {int len; int sk; } ;
struct netlink_callback {int* args; TYPE_1__* nlh; int skb; } ;
struct net {int dummy; } ;
struct TYPE_4__ {int portid; } ;
struct TYPE_3__ {int nlmsg_seq; } ;


 int MAX_BEARERS ;
 TYPE_2__ NETLINK_CB (int ) ;
 int __tipc_nl_add_monitor (struct net*,struct tipc_nl_msg*,int) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 struct net* sock_net (int ) ;

int tipc_nl_node_dump_monitor(struct sk_buff *skb, struct netlink_callback *cb)
{
 struct net *net = sock_net(skb->sk);
 u32 prev_bearer = cb->args[0];
 struct tipc_nl_msg msg;
 int bearer_id;
 int err;

 if (prev_bearer == MAX_BEARERS)
  return 0;

 msg.skb = skb;
 msg.portid = NETLINK_CB(cb->skb).portid;
 msg.seq = cb->nlh->nlmsg_seq;

 rtnl_lock();
 for (bearer_id = prev_bearer; bearer_id < MAX_BEARERS; bearer_id++) {
  err = __tipc_nl_add_monitor(net, &msg, bearer_id);
  if (err)
   break;
 }
 rtnl_unlock();
 cb->args[0] = bearer_id;

 return skb->len;
}
