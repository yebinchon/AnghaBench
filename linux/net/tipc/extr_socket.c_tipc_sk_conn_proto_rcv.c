
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int (* sk_write_space ) (struct sock*) ;int (* sk_state_change ) (struct sock*) ;} ;
struct tipc_sock {int probe_unacked; int peer_caps; int snd_win; int snt_unacked; struct sock sk; } ;
struct tipc_msg {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;


 int BASIC_H_SIZE ;
 int CONN_ACK ;
 int CONN_PROBE ;
 int CONN_PROBE_REPLY ;
 int TIPC_BLOCK_FLOWCTL ;
 int TIPC_CONN_MSG ;
 int TIPC_CRITICAL_IMPORTANCE ;
 int TIPC_DISCONNECTING ;
 int TIPC_DUMP_NONE ;
 int TIPC_OK ;
 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int msg_adv_win (struct tipc_msg*) ;
 scalar_t__ msg_conn_ack (struct tipc_msg*) ;
 int msg_errcode (struct tipc_msg*) ;
 int msg_set_hdr_sz (struct tipc_msg*,int ) ;
 int msg_set_size (struct tipc_msg*,int ) ;
 int msg_set_type (struct tipc_msg*,int) ;
 int msg_set_user (struct tipc_msg*,int ) ;
 int msg_type (struct tipc_msg*) ;
 int pr_warn (char*) ;
 int sock_net (struct sock*) ;
 int stub1 (struct sock*) ;
 int stub2 (struct sock*) ;
 scalar_t__ tipc_msg_reverse (int ,struct sk_buff**,int ) ;
 int tipc_node_remove_conn (int ,int ,int ) ;
 int tipc_set_sk_state (struct sock*,int ) ;
 int trace_tipc_sk_drop_msg (struct sock*,struct sk_buff*,int ,char*) ;
 int tsk_conn_cong (struct tipc_sock*) ;
 int tsk_own_node (struct tipc_sock*) ;
 int tsk_peer_msg (struct tipc_sock*,struct tipc_msg*) ;
 int tsk_peer_node (struct tipc_sock*) ;
 int tsk_peer_port (struct tipc_sock*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void tipc_sk_conn_proto_rcv(struct tipc_sock *tsk, struct sk_buff *skb,
       struct sk_buff_head *inputq,
       struct sk_buff_head *xmitq)
{
 struct tipc_msg *hdr = buf_msg(skb);
 u32 onode = tsk_own_node(tsk);
 struct sock *sk = &tsk->sk;
 int mtyp = msg_type(hdr);
 bool conn_cong;


 if (!tsk_peer_msg(tsk, hdr)) {
  trace_tipc_sk_drop_msg(sk, skb, TIPC_DUMP_NONE, "@proto_rcv!");
  goto exit;
 }

 if (unlikely(msg_errcode(hdr))) {
  tipc_set_sk_state(sk, TIPC_DISCONNECTING);
  tipc_node_remove_conn(sock_net(sk), tsk_peer_node(tsk),
          tsk_peer_port(tsk));
  sk->sk_state_change(sk);




  msg_set_user(hdr, TIPC_CRITICAL_IMPORTANCE);
  msg_set_type(hdr, TIPC_CONN_MSG);
  msg_set_size(hdr, BASIC_H_SIZE);
  msg_set_hdr_sz(hdr, BASIC_H_SIZE);
  __skb_queue_tail(inputq, skb);
  return;
 }

 tsk->probe_unacked = 0;

 if (mtyp == CONN_PROBE) {
  msg_set_type(hdr, CONN_PROBE_REPLY);
  if (tipc_msg_reverse(onode, &skb, TIPC_OK))
   __skb_queue_tail(xmitq, skb);
  return;
 } else if (mtyp == CONN_ACK) {
  conn_cong = tsk_conn_cong(tsk);
  tsk->snt_unacked -= msg_conn_ack(hdr);
  if (tsk->peer_caps & TIPC_BLOCK_FLOWCTL)
   tsk->snd_win = msg_adv_win(hdr);
  if (conn_cong)
   sk->sk_write_space(sk);
 } else if (mtyp != CONN_PROBE_REPLY) {
  pr_warn("Received unknown CONN_PROTO msg\n");
 }
exit:
 kfree_skb(skb);
}
