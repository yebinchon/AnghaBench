
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int sk; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct genl_info {int extack; int * attrs; } ;


 int EINVAL ;
 size_t TIPC_NLA_MON ;
 size_t TIPC_NLA_MON_ACTIVATION_THRESHOLD ;
 int TIPC_NLA_MON_MAX ;
 int nla_get_u32 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,int ,int ,int ) ;
 struct net* sock_net (int ) ;
 int tipc_nl_monitor_policy ;
 int tipc_nl_monitor_set_threshold (struct net*,int ) ;

int tipc_nl_node_set_monitor(struct sk_buff *skb, struct genl_info *info)
{
 struct nlattr *attrs[TIPC_NLA_MON_MAX + 1];
 struct net *net = sock_net(skb->sk);
 int err;

 if (!info->attrs[TIPC_NLA_MON])
  return -EINVAL;

 err = nla_parse_nested_deprecated(attrs, TIPC_NLA_MON_MAX,
       info->attrs[TIPC_NLA_MON],
       tipc_nl_monitor_policy,
       info->extack);
 if (err)
  return err;

 if (attrs[TIPC_NLA_MON_ACTIVATION_THRESHOLD]) {
  u32 val;

  val = nla_get_u32(attrs[TIPC_NLA_MON_ACTIVATION_THRESHOLD]);
  err = tipc_nl_monitor_set_threshold(net, val);
  if (err)
   return err;
 }

 return 0;
}
