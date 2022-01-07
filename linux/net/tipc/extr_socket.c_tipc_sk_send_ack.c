
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int sk_rcvbuf; } ;
struct tipc_sock {int peer_caps; int rcv_win; struct sock sk; int rcv_unacked; int portid; } ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;


 int CONN_ACK ;
 int CONN_MANAGER ;
 int INT_H_SIZE ;
 int TIPC_BLOCK_FLOWCTL ;
 int TIPC_OK ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 int msg_link_selector (struct tipc_msg*) ;
 int msg_set_adv_win (struct tipc_msg*,int ) ;
 int msg_set_conn_ack (struct tipc_msg*,int ) ;
 struct net* sock_net (struct sock*) ;
 struct sk_buff* tipc_msg_create (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int tipc_node_xmit_skb (struct net*,struct sk_buff*,int ,int ) ;
 int tipc_sk_connected (struct sock*) ;
 int tsk_adv_blocks (int ) ;
 int tsk_own_node (struct tipc_sock*) ;
 int tsk_peer_node (struct tipc_sock*) ;
 int tsk_peer_port (struct tipc_sock*) ;

__attribute__((used)) static void tipc_sk_send_ack(struct tipc_sock *tsk)
{
 struct sock *sk = &tsk->sk;
 struct net *net = sock_net(sk);
 struct sk_buff *skb = ((void*)0);
 struct tipc_msg *msg;
 u32 peer_port = tsk_peer_port(tsk);
 u32 dnode = tsk_peer_node(tsk);

 if (!tipc_sk_connected(sk))
  return;
 skb = tipc_msg_create(CONN_MANAGER, CONN_ACK, INT_H_SIZE, 0,
         dnode, tsk_own_node(tsk), peer_port,
         tsk->portid, TIPC_OK);
 if (!skb)
  return;
 msg = buf_msg(skb);
 msg_set_conn_ack(msg, tsk->rcv_unacked);
 tsk->rcv_unacked = 0;


 if (tsk->peer_caps & TIPC_BLOCK_FLOWCTL) {
  tsk->rcv_win = tsk_adv_blocks(tsk->sk.sk_rcvbuf);
  msg_set_adv_win(msg, tsk->rcv_win);
 }
 tipc_node_xmit_skb(net, skb, dnode, msg_link_selector(msg));
}
