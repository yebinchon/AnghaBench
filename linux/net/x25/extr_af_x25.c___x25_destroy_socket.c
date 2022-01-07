
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int function; scalar_t__ expires; } ;
struct sock {TYPE_2__ sk_timer; int sk_state; int sk_receive_queue; } ;
struct sk_buff {struct sock* sk; } ;
struct TYPE_3__ {int state; } ;


 int HZ ;
 int SOCK_DEAD ;
 int TCP_LISTEN ;
 int X25_STATE_0 ;
 int __sock_put (struct sock*) ;
 int add_timer (TYPE_2__*) ;
 scalar_t__ jiffies ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ sk_has_allocations (struct sock*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int sock_set_flag (struct sock*,int ) ;
 int x25_clear_queues (struct sock*) ;
 int x25_destroy_timer ;
 int x25_remove_socket (struct sock*) ;
 TYPE_1__* x25_sk (struct sock*) ;
 int x25_start_heartbeat (struct sock*) ;
 int x25_stop_heartbeat (struct sock*) ;
 int x25_stop_timer (struct sock*) ;

__attribute__((used)) static void __x25_destroy_socket(struct sock *sk)
{
 struct sk_buff *skb;

 x25_stop_heartbeat(sk);
 x25_stop_timer(sk);

 x25_remove_socket(sk);
 x25_clear_queues(sk);

 while ((skb = skb_dequeue(&sk->sk_receive_queue)) != ((void*)0)) {
  if (skb->sk != sk) {



   skb->sk->sk_state = TCP_LISTEN;
   sock_set_flag(skb->sk, SOCK_DEAD);
   x25_start_heartbeat(skb->sk);
   x25_sk(skb->sk)->state = X25_STATE_0;
  }

  kfree_skb(skb);
 }

 if (sk_has_allocations(sk)) {

  sk->sk_timer.expires = jiffies + 10 * HZ;
  sk->sk_timer.function = x25_destroy_timer;
  add_timer(&sk->sk_timer);
 } else {

  __sock_put(sk);
 }
}
