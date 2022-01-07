
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u32 ;
struct tipc_nl_msg {int seq; int portid; struct sk_buff* skb; } ;
struct sk_buff {int len; int sk; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {int* args; TYPE_1__* nlh; int skb; } ;
struct net {int dummy; } ;
struct TYPE_4__ {int portid; } ;
struct TYPE_3__ {int nlmsg_seq; } ;


 int EINVAL ;
 void* MAX_BEARERS ;
 TYPE_2__ NETLINK_CB (int ) ;
 size_t TIPC_NLA_MON ;
 int TIPC_NLA_MON_MAX ;
 size_t TIPC_NLA_MON_REF ;
 void* nla_get_u32 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int ,int *) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 struct net* sock_net (int ) ;
 int tipc_nl_add_monitor_peer (struct net*,struct tipc_nl_msg*,void*,void**) ;
 int tipc_nl_monitor_policy ;
 int tipc_nlmsg_parse (TYPE_1__*,struct nlattr***) ;

int tipc_nl_node_dump_monitor_peer(struct sk_buff *skb,
       struct netlink_callback *cb)
{
 struct net *net = sock_net(skb->sk);
 u32 prev_node = cb->args[1];
 u32 bearer_id = cb->args[2];
 int done = cb->args[0];
 struct tipc_nl_msg msg;
 int err;

 if (!prev_node) {
  struct nlattr **attrs;
  struct nlattr *mon[TIPC_NLA_MON_MAX + 1];

  err = tipc_nlmsg_parse(cb->nlh, &attrs);
  if (err)
   return err;

  if (!attrs[TIPC_NLA_MON])
   return -EINVAL;

  err = nla_parse_nested_deprecated(mon, TIPC_NLA_MON_MAX,
        attrs[TIPC_NLA_MON],
        tipc_nl_monitor_policy,
        ((void*)0));
  if (err)
   return err;

  if (!mon[TIPC_NLA_MON_REF])
   return -EINVAL;

  bearer_id = nla_get_u32(mon[TIPC_NLA_MON_REF]);

  if (bearer_id >= MAX_BEARERS)
   return -EINVAL;
 }

 if (done)
  return 0;

 msg.skb = skb;
 msg.portid = NETLINK_CB(cb->skb).portid;
 msg.seq = cb->nlh->nlmsg_seq;

 rtnl_lock();
 err = tipc_nl_add_monitor_peer(net, &msg, bearer_id, &prev_node);
 if (!err)
  done = 1;

 rtnl_unlock();
 cb->args[0] = done;
 cb->args[1] = prev_node;
 cb->args[2] = bearer_id;

 return skb->len;
}
