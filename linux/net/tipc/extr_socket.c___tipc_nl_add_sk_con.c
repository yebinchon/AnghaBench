
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tipc_sock {scalar_t__ conn_type; scalar_t__ conn_instance; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;


 int EMSGSIZE ;
 int TIPC_NLA_CON_FLAG ;
 int TIPC_NLA_CON_INST ;
 int TIPC_NLA_CON_NODE ;
 int TIPC_NLA_CON_SOCK ;
 int TIPC_NLA_CON_TYPE ;
 int TIPC_NLA_SOCK_CON ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_flag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,scalar_t__) ;
 scalar_t__ tsk_peer_node (struct tipc_sock*) ;
 scalar_t__ tsk_peer_port (struct tipc_sock*) ;

__attribute__((used)) static int __tipc_nl_add_sk_con(struct sk_buff *skb, struct tipc_sock *tsk)
{
 u32 peer_node;
 u32 peer_port;
 struct nlattr *nest;

 peer_node = tsk_peer_node(tsk);
 peer_port = tsk_peer_port(tsk);

 nest = nla_nest_start_noflag(skb, TIPC_NLA_SOCK_CON);
 if (!nest)
  return -EMSGSIZE;

 if (nla_put_u32(skb, TIPC_NLA_CON_NODE, peer_node))
  goto msg_full;
 if (nla_put_u32(skb, TIPC_NLA_CON_SOCK, peer_port))
  goto msg_full;

 if (tsk->conn_type != 0) {
  if (nla_put_flag(skb, TIPC_NLA_CON_FLAG))
   goto msg_full;
  if (nla_put_u32(skb, TIPC_NLA_CON_TYPE, tsk->conn_type))
   goto msg_full;
  if (nla_put_u32(skb, TIPC_NLA_CON_INST, tsk->conn_instance))
   goto msg_full;
 }
 nla_nest_end(skb, nest);

 return 0;

msg_full:
 nla_nest_cancel(skb, nest);

 return -EMSGSIZE;
}
