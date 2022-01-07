
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_sock {scalar_t__ cong_link_cnt; } ;
struct sock {int sk_write_queue; int sk_timer; } ;
struct sk_buff_head {int dummy; } ;


 int msecs_to_jiffies (int) ;
 int sk_reset_timer (struct sock*,int *,int ) ;
 int tipc_msg_skb_clone (int *,struct sk_buff_head*) ;
 struct tipc_sock* tipc_sk (struct sock*) ;

__attribute__((used)) static void tipc_sk_retry_connect(struct sock *sk, struct sk_buff_head *list)
{
 struct tipc_sock *tsk = tipc_sk(sk);


 if (tsk->cong_link_cnt) {
  sk_reset_timer(sk, &sk->sk_timer, msecs_to_jiffies(100));
  return;
 }

 tipc_msg_skb_clone(&sk->sk_write_queue, list);
}
