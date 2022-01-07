
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct tipc_net {int net_id; int legacy_addr_format; } ;
struct sk_buff {int sk; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct genl_info {int extack; int * attrs; } ;


 int EINVAL ;
 int EPERM ;
 int NODE_ID_LEN ;
 size_t TIPC_NLA_NET ;
 size_t TIPC_NLA_NET_ADDR ;
 size_t TIPC_NLA_NET_ID ;
 int TIPC_NLA_NET_MAX ;
 size_t TIPC_NLA_NET_NODEID ;
 size_t TIPC_NLA_NET_NODEID_W1 ;
 int nla_get_u32 (struct nlattr*) ;
 int nla_get_u64 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,int ,int ,int ) ;
 struct net* sock_net (int ) ;
 struct tipc_net* tipc_net (struct net*) ;
 int tipc_net_init (struct net*,int *,int) ;
 int tipc_nl_net_policy ;
 scalar_t__ tipc_own_addr (struct net*) ;

int __tipc_nl_net_set(struct sk_buff *skb, struct genl_info *info)
{
 struct nlattr *attrs[TIPC_NLA_NET_MAX + 1];
 struct net *net = sock_net(skb->sk);
 struct tipc_net *tn = tipc_net(net);
 int err;

 if (!info->attrs[TIPC_NLA_NET])
  return -EINVAL;

 err = nla_parse_nested_deprecated(attrs, TIPC_NLA_NET_MAX,
       info->attrs[TIPC_NLA_NET],
       tipc_nl_net_policy, info->extack);

 if (err)
  return err;


 if (tipc_own_addr(net))
  return -EPERM;

 if (attrs[TIPC_NLA_NET_ID]) {
  u32 val;

  val = nla_get_u32(attrs[TIPC_NLA_NET_ID]);
  if (val < 1 || val > 9999)
   return -EINVAL;

  tn->net_id = val;
 }

 if (attrs[TIPC_NLA_NET_ADDR]) {
  u32 addr;

  addr = nla_get_u32(attrs[TIPC_NLA_NET_ADDR]);
  if (!addr)
   return -EINVAL;
  tn->legacy_addr_format = 1;
  tipc_net_init(net, ((void*)0), addr);
 }

 if (attrs[TIPC_NLA_NET_NODEID]) {
  u8 node_id[NODE_ID_LEN];
  u64 *w0 = (u64 *)&node_id[0];
  u64 *w1 = (u64 *)&node_id[8];

  if (!attrs[TIPC_NLA_NET_NODEID_W1])
   return -EINVAL;
  *w0 = nla_get_u64(attrs[TIPC_NLA_NET_NODEID]);
  *w1 = nla_get_u64(attrs[TIPC_NLA_NET_NODEID_W1]);
  tipc_net_init(net, node_id, 0);
 }
 return 0;
}
