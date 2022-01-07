
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;


 int TIPC_ERR_NO_NAME ;
 int TIPC_OK ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 scalar_t__ msg_errcode (struct tipc_msg*) ;
 int msg_incr_reroute_cnt (struct tipc_msg*) ;
 int msg_isdata (struct tipc_msg*) ;
 int msg_lookup_scope (struct tipc_msg*) ;
 int msg_named (struct tipc_msg*) ;
 int msg_nameinst (struct tipc_msg*) ;
 int msg_nametype (struct tipc_msg*) ;
 scalar_t__ msg_reroute_cnt (struct tipc_msg*) ;
 int msg_set_destnode (struct tipc_msg*,scalar_t__) ;
 int msg_set_destport (struct tipc_msg*,scalar_t__) ;
 int msg_set_prevnode (struct tipc_msg*,scalar_t__) ;
 int skb_cloned (struct sk_buff*) ;
 scalar_t__ skb_linearize (struct sk_buff*) ;
 scalar_t__ tipc_nametbl_translate (struct net*,int ,int ,scalar_t__*) ;
 scalar_t__ tipc_own_addr (struct net*) ;
 scalar_t__ tipc_scope2node (struct net*,int ) ;

bool tipc_msg_lookup_dest(struct net *net, struct sk_buff *skb, int *err)
{
 struct tipc_msg *msg = buf_msg(skb);
 u32 dport, dnode;
 u32 onode = tipc_own_addr(net);

 if (!msg_isdata(msg))
  return 0;
 if (!msg_named(msg))
  return 0;
 if (msg_errcode(msg))
  return 0;
 *err = TIPC_ERR_NO_NAME;
 if (skb_linearize(skb))
  return 0;
 msg = buf_msg(skb);
 if (msg_reroute_cnt(msg))
  return 0;
 dnode = tipc_scope2node(net, msg_lookup_scope(msg));
 dport = tipc_nametbl_translate(net, msg_nametype(msg),
           msg_nameinst(msg), &dnode);
 if (!dport)
  return 0;
 msg_incr_reroute_cnt(msg);
 if (dnode != onode)
  msg_set_prevnode(msg, onode);
 msg_set_destnode(msg, dnode);
 msg_set_destport(msg, dport);
 *err = TIPC_OK;

 if (!skb_cloned(skb))
  return 1;

 return 1;
}
