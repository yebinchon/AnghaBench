
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_sock {int cong_link_cnt; int cong_links; int portid; } ;
struct timer_list {int dummy; } ;
struct sock {scalar_t__ sk_state; int sk_timer; } ;
struct sk_buff_head {int dummy; } ;


 int ELINKCONG ;
 int HZ ;
 scalar_t__ TIPC_CONNECTING ;
 scalar_t__ TIPC_ESTABLISHED ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 struct sock* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 struct sock* sk ;
 int sk_reset_timer (struct sock*,int *,scalar_t__) ;
 int sk_timer ;
 int skb_queue_empty (struct sk_buff_head*) ;
 int sock_net (struct sock*) ;
 scalar_t__ sock_owned_by_user (struct sock*) ;
 int sock_put (struct sock*) ;
 int tipc_dest_push (int *,int ,int ) ;
 int tipc_node_xmit (int ,struct sk_buff_head*,int ,int ) ;
 struct tipc_sock* tipc_sk (struct sock*) ;
 int tipc_sk_check_probing_state (struct sock*,struct sk_buff_head*) ;
 int tipc_sk_retry_connect (struct sock*,struct sk_buff_head*) ;
 int tsk_peer_node (struct tipc_sock*) ;

__attribute__((used)) static void tipc_sk_timeout(struct timer_list *t)
{
 struct sock *sk = from_timer(sk, t, sk_timer);
 struct tipc_sock *tsk = tipc_sk(sk);
 u32 pnode = tsk_peer_node(tsk);
 struct sk_buff_head list;
 int rc = 0;

 __skb_queue_head_init(&list);
 bh_lock_sock(sk);


 if (sock_owned_by_user(sk)) {
  sk_reset_timer(sk, &sk->sk_timer, jiffies + HZ / 20);
  bh_unlock_sock(sk);
  return;
 }

 if (sk->sk_state == TIPC_ESTABLISHED)
  tipc_sk_check_probing_state(sk, &list);
 else if (sk->sk_state == TIPC_CONNECTING)
  tipc_sk_retry_connect(sk, &list);

 bh_unlock_sock(sk);

 if (!skb_queue_empty(&list))
  rc = tipc_node_xmit(sock_net(sk), &list, pnode, tsk->portid);


 if (rc == -ELINKCONG) {
  tipc_dest_push(&tsk->cong_links, pnode, 0);
  tsk->cong_link_cnt = 1;
 }
 sock_put(sk);
}
