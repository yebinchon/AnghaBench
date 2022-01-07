
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tipc_sock {int portid; int cong_link_cnt; } ;
struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; int sk_receive_queue; int sk_write_queue; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {scalar_t__ bytes_read; } ;


 long CONN_TIMEOUT_DEFAULT ;
 int SHORT_H_SIZE ;
 int TIPC_CONN_MSG ;
 int TIPC_CRITICAL_IMPORTANCE ;
 scalar_t__ TIPC_DISCONNECTING ;
 TYPE_1__* TIPC_SKB_CB (struct sk_buff*) ;
 struct sk_buff* __skb_dequeue (int *) ;
 int __skb_queue_purge (int *) ;
 int kfree_skb (struct sk_buff*) ;
 struct net* sock_net (struct sock*) ;
 struct sk_buff* tipc_msg_create (int ,int ,int ,int ,int ,int ,int ,int ,int) ;
 int tipc_node_remove_conn (struct net*,int ,int ) ;
 int tipc_node_xmit_skb (struct net*,struct sk_buff*,int ,int ) ;
 int tipc_set_sk_state (struct sock*,scalar_t__) ;
 struct tipc_sock* tipc_sk (struct sock*) ;
 int tipc_sk_respond (struct sock*,struct sk_buff*,int) ;
 scalar_t__ tipc_sk_type_connectionless (struct sock*) ;
 int tipc_wait_for_cond (struct socket*,long*,int) ;
 int tsk_conn_cong (struct tipc_sock*) ;
 int tsk_own_node (struct tipc_sock*) ;
 int tsk_peer_node (struct tipc_sock*) ;
 int tsk_peer_port (struct tipc_sock*) ;

__attribute__((used)) static void __tipc_shutdown(struct socket *sock, int error)
{
 struct sock *sk = sock->sk;
 struct tipc_sock *tsk = tipc_sk(sk);
 struct net *net = sock_net(sk);
 long timeout = CONN_TIMEOUT_DEFAULT;
 u32 dnode = tsk_peer_node(tsk);
 struct sk_buff *skb;


 tipc_wait_for_cond(sock, &timeout, (!tsk->cong_link_cnt &&
         !tsk_conn_cong(tsk)));


 __skb_queue_purge(&sk->sk_write_queue);




 while ((skb = __skb_dequeue(&sk->sk_receive_queue)) != ((void*)0)) {
  if (TIPC_SKB_CB(skb)->bytes_read) {
   kfree_skb(skb);
   continue;
  }
  if (!tipc_sk_type_connectionless(sk) &&
      sk->sk_state != TIPC_DISCONNECTING) {
   tipc_set_sk_state(sk, TIPC_DISCONNECTING);
   tipc_node_remove_conn(net, dnode, tsk->portid);
  }
  tipc_sk_respond(sk, skb, error);
 }

 if (tipc_sk_type_connectionless(sk))
  return;

 if (sk->sk_state != TIPC_DISCONNECTING) {
  skb = tipc_msg_create(TIPC_CRITICAL_IMPORTANCE,
          TIPC_CONN_MSG, SHORT_H_SIZE, 0, dnode,
          tsk_own_node(tsk), tsk_peer_port(tsk),
          tsk->portid, error);
  if (skb)
   tipc_node_xmit_skb(net, skb, dnode, tsk->portid);
  tipc_node_remove_conn(net, dnode, tsk->portid);
  tipc_set_sk_state(sk, TIPC_DISCONNECTING);
 }
}
