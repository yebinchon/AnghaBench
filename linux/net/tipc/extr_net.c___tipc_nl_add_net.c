
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tipc_nl_msg {int skb; int seq; int portid; } ;
struct tipc_net {int net_id; int * node_id; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;


 int EMSGSIZE ;
 int NLM_F_MULTI ;
 int TIPC_NLA_NET ;
 int TIPC_NLA_NET_ID ;
 int TIPC_NLA_NET_NODEID ;
 int TIPC_NLA_NET_NODEID_W1 ;
 int TIPC_NL_NET_GET ;
 int genlmsg_cancel (int ,void*) ;
 int genlmsg_end (int ,void*) ;
 void* genlmsg_put (int ,int ,int ,int *,int ,int ) ;
 struct tipc_net* net_generic (struct net*,int ) ;
 int nla_nest_cancel (int ,struct nlattr*) ;
 int nla_nest_end (int ,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (int ,int ) ;
 scalar_t__ nla_put_u32 (int ,int ,int ) ;
 scalar_t__ nla_put_u64_64bit (int ,int ,int ,int ) ;
 int tipc_genl_family ;
 int tipc_net_id ;

__attribute__((used)) static int __tipc_nl_add_net(struct net *net, struct tipc_nl_msg *msg)
{
 struct tipc_net *tn = net_generic(net, tipc_net_id);
 u64 *w0 = (u64 *)&tn->node_id[0];
 u64 *w1 = (u64 *)&tn->node_id[8];
 struct nlattr *attrs;
 void *hdr;

 hdr = genlmsg_put(msg->skb, msg->portid, msg->seq, &tipc_genl_family,
     NLM_F_MULTI, TIPC_NL_NET_GET);
 if (!hdr)
  return -EMSGSIZE;

 attrs = nla_nest_start_noflag(msg->skb, TIPC_NLA_NET);
 if (!attrs)
  goto msg_full;

 if (nla_put_u32(msg->skb, TIPC_NLA_NET_ID, tn->net_id))
  goto attr_msg_full;
 if (nla_put_u64_64bit(msg->skb, TIPC_NLA_NET_NODEID, *w0, 0))
  goto attr_msg_full;
 if (nla_put_u64_64bit(msg->skb, TIPC_NLA_NET_NODEID_W1, *w1, 0))
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
