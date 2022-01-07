
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;


 int TIPC_DUMP_NONE ;
 int buf_msg (struct sk_buff*) ;
 int msg_destnode (int ) ;
 int msg_origport (int ) ;
 int sock_net (struct sock*) ;
 int tipc_msg_reverse (int ,struct sk_buff**,int) ;
 int tipc_node_xmit_skb (int ,struct sk_buff*,int ,int ) ;
 int tipc_own_addr (int ) ;
 int trace_tipc_sk_rej_msg (struct sock*,struct sk_buff*,int ,char*) ;

__attribute__((used)) static void tipc_sk_respond(struct sock *sk, struct sk_buff *skb, int err)
{
 u32 selector;
 u32 dnode;
 u32 onode = tipc_own_addr(sock_net(sk));

 if (!tipc_msg_reverse(onode, &skb, err))
  return;

 trace_tipc_sk_rej_msg(sk, skb, TIPC_DUMP_NONE, "@sk_respond!");
 dnode = msg_destnode(buf_msg(skb));
 selector = msg_origport(buf_msg(skb));
 tipc_node_xmit_skb(sock_net(sk), skb, dnode, selector);
}
