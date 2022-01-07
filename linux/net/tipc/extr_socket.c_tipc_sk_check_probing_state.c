
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_sock {int probe_unacked; int portid; } ;
struct sock {int sk_timer; int (* sk_state_change ) (struct sock*) ;int sk_err; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;


 int CONN_MANAGER ;
 int CONN_PROBE ;
 scalar_t__ CONN_PROBING_INTV ;
 int ECONNABORTED ;
 int INT_H_SIZE ;
 int TIPC_DISCONNECTING ;
 int TIPC_OK ;
 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 scalar_t__ jiffies ;
 int sk_reset_timer (struct sock*,int *,scalar_t__) ;
 int sock_net (struct sock*) ;
 int stub1 (struct sock*) ;
 struct sk_buff* tipc_msg_create (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int tipc_node_remove_conn (int ,int ,int ) ;
 int tipc_set_sk_state (struct sock*,int ) ;
 struct tipc_sock* tipc_sk (struct sock*) ;
 int tsk_own_node (struct tipc_sock*) ;
 int tsk_peer_node (struct tipc_sock*) ;
 int tsk_peer_port (struct tipc_sock*) ;

__attribute__((used)) static void tipc_sk_check_probing_state(struct sock *sk,
     struct sk_buff_head *list)
{
 struct tipc_sock *tsk = tipc_sk(sk);
 u32 pnode = tsk_peer_node(tsk);
 u32 pport = tsk_peer_port(tsk);
 u32 self = tsk_own_node(tsk);
 u32 oport = tsk->portid;
 struct sk_buff *skb;

 if (tsk->probe_unacked) {
  tipc_set_sk_state(sk, TIPC_DISCONNECTING);
  sk->sk_err = ECONNABORTED;
  tipc_node_remove_conn(sock_net(sk), pnode, pport);
  sk->sk_state_change(sk);
  return;
 }

 skb = tipc_msg_create(CONN_MANAGER, CONN_PROBE, INT_H_SIZE, 0,
         pnode, self, pport, oport, TIPC_OK);
 if (skb)
  __skb_queue_tail(list, skb);
 tsk->probe_unacked = 1;
 sk_reset_timer(sk, &sk->sk_timer, jiffies + CONN_PROBING_INTV);
}
