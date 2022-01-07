
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_node {int addr; } ;
struct tipc_nl_msg {int skb; int seq; int portid; } ;
struct nlattr {int dummy; } ;


 int EMSGSIZE ;
 int NLM_F_MULTI ;
 int TIPC_NLA_NODE ;
 int TIPC_NLA_NODE_ADDR ;
 int TIPC_NLA_NODE_UP ;
 int TIPC_NL_NODE_GET ;
 int genlmsg_cancel (int ,void*) ;
 int genlmsg_end (int ,void*) ;
 void* genlmsg_put (int ,int ,int ,int *,int ,int ) ;
 int nla_nest_cancel (int ,struct nlattr*) ;
 int nla_nest_end (int ,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (int ,int ) ;
 scalar_t__ nla_put_flag (int ,int ) ;
 scalar_t__ nla_put_u32 (int ,int ,int ) ;
 scalar_t__ node_is_up (struct tipc_node*) ;
 int tipc_genl_family ;

__attribute__((used)) static int __tipc_nl_add_node(struct tipc_nl_msg *msg, struct tipc_node *node)
{
 void *hdr;
 struct nlattr *attrs;

 hdr = genlmsg_put(msg->skb, msg->portid, msg->seq, &tipc_genl_family,
     NLM_F_MULTI, TIPC_NL_NODE_GET);
 if (!hdr)
  return -EMSGSIZE;

 attrs = nla_nest_start_noflag(msg->skb, TIPC_NLA_NODE);
 if (!attrs)
  goto msg_full;

 if (nla_put_u32(msg->skb, TIPC_NLA_NODE_ADDR, node->addr))
  goto attr_msg_full;
 if (node_is_up(node))
  if (nla_put_flag(msg->skb, TIPC_NLA_NODE_UP))
   goto attr_msg_full;

 nla_nest_end(msg->skb, attrs);
 genlmsg_end(msg->skb, hdr);

 return 0;

attr_msg_full:
 nla_nest_cancel(msg->skb, attrs);
msg_full:
 genlmsg_cancel(msg->skb, hdr);

 return -EMSGSIZE;
}
