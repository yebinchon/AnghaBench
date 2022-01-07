
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_nl_compat_msg {scalar_t__ cmd; int req; } ;
struct tipc_nl_compat_cmd_doit {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
typedef int __be32 ;


 int EMSGSIZE ;
 scalar_t__ TIPC_CMD_SET_NETID ;
 scalar_t__ TIPC_CMD_SET_NODE_ADDR ;
 int TIPC_NLA_NET ;
 int TIPC_NLA_NET_ADDR ;
 int TIPC_NLA_NET_ID ;
 scalar_t__ TLV_DATA (int ) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 int ntohl (int ) ;

__attribute__((used)) static int tipc_nl_compat_net_set(struct tipc_nl_compat_cmd_doit *cmd,
      struct sk_buff *skb,
      struct tipc_nl_compat_msg *msg)
{
 u32 val;
 struct nlattr *net;

 val = ntohl(*(__be32 *)TLV_DATA(msg->req));

 net = nla_nest_start_noflag(skb, TIPC_NLA_NET);
 if (!net)
  return -EMSGSIZE;

 if (msg->cmd == TIPC_CMD_SET_NODE_ADDR) {
  if (nla_put_u32(skb, TIPC_NLA_NET_ADDR, val))
   return -EMSGSIZE;
 } else if (msg->cmd == TIPC_CMD_SET_NETID) {
  if (nla_put_u32(skb, TIPC_NLA_NET_ID, val))
   return -EMSGSIZE;
 }
 nla_nest_end(skb, net);

 return 0;
}
