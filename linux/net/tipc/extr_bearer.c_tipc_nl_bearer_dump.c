
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tipc_nl_msg {int seq; int portid; struct sk_buff* skb; } ;
struct tipc_net {int * bearer_list; } ;
struct tipc_bearer {int dummy; } ;
struct sk_buff {int len; int sk; } ;
struct netlink_callback {int* args; TYPE_1__* nlh; int skb; } ;
struct net {int dummy; } ;
struct TYPE_4__ {int portid; } ;
struct TYPE_3__ {int nlmsg_seq; } ;


 int MAX_BEARERS ;
 TYPE_2__ NETLINK_CB (int ) ;
 int NLM_F_MULTI ;
 int __tipc_nl_add_bearer (struct tipc_nl_msg*,struct tipc_bearer*,int ) ;
 struct tipc_net* net_generic (struct net*,int ) ;
 struct tipc_bearer* rtnl_dereference (int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 struct net* sock_net (int ) ;
 int tipc_net_id ;

int tipc_nl_bearer_dump(struct sk_buff *skb, struct netlink_callback *cb)
{
 int err;
 int i = cb->args[0];
 struct tipc_bearer *bearer;
 struct tipc_nl_msg msg;
 struct net *net = sock_net(skb->sk);
 struct tipc_net *tn = net_generic(net, tipc_net_id);

 if (i == MAX_BEARERS)
  return 0;

 msg.skb = skb;
 msg.portid = NETLINK_CB(cb->skb).portid;
 msg.seq = cb->nlh->nlmsg_seq;

 rtnl_lock();
 for (i = 0; i < MAX_BEARERS; i++) {
  bearer = rtnl_dereference(tn->bearer_list[i]);
  if (!bearer)
   continue;

  err = __tipc_nl_add_bearer(&msg, bearer, NLM_F_MULTI);
  if (err)
   break;
 }
 rtnl_unlock();

 cb->args[0] = i;
 return skb->len;
}
