
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct sock {int sk_write_queue; int sk_state; int sk_receive_queue; } ;
struct sk_buff {struct sock* sk; } ;
struct TYPE_16__ {scalar_t__ expires; } ;
struct TYPE_15__ {struct sock* sk; TYPE_2__ dtimer; int state; } ;
typedef TYPE_1__ ax25_cb ;


 int AX25_STATE_0 ;
 int HZ ;
 int TCP_LISTEN ;
 int add_timer (TYPE_2__*) ;
 int ax25_cb_del (TYPE_1__*) ;
 int ax25_cb_put (TYPE_1__*) ;
 int ax25_clear_queues (TYPE_1__*) ;
 int ax25_destroy_timer ;
 int ax25_start_heartbeat (TYPE_1__*) ;
 int ax25_stop_heartbeat (TYPE_1__*) ;
 int ax25_stop_idletimer (TYPE_1__*) ;
 int ax25_stop_t1timer (TYPE_1__*) ;
 int ax25_stop_t2timer (TYPE_1__*) ;
 int ax25_stop_t3timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ sk_has_allocations (struct sock*) ;
 TYPE_1__* sk_to_ax25 (struct sock*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_purge (int *) ;
 int sock_orphan (struct sock*) ;
 int sock_put (struct sock*) ;
 int timer_setup (TYPE_2__*,int ,int ) ;

void ax25_destroy_socket(ax25_cb *ax25)
{
 struct sk_buff *skb;

 ax25_cb_del(ax25);

 ax25_stop_heartbeat(ax25);
 ax25_stop_t1timer(ax25);
 ax25_stop_t2timer(ax25);
 ax25_stop_t3timer(ax25);
 ax25_stop_idletimer(ax25);

 ax25_clear_queues(ax25);

 if (ax25->sk != ((void*)0)) {
  while ((skb = skb_dequeue(&ax25->sk->sk_receive_queue)) != ((void*)0)) {
   if (skb->sk != ax25->sk) {

    ax25_cb *sax25 = sk_to_ax25(skb->sk);


    sock_orphan(skb->sk);


    skb->sk->sk_state = TCP_LISTEN;

    ax25_start_heartbeat(sax25);
    sax25->state = AX25_STATE_0;
   }

   kfree_skb(skb);
  }
  skb_queue_purge(&ax25->sk->sk_write_queue);
 }

 if (ax25->sk != ((void*)0)) {
  if (sk_has_allocations(ax25->sk)) {

   timer_setup(&ax25->dtimer, ax25_destroy_timer, 0);
   ax25->dtimer.expires = jiffies + 2 * HZ;
   add_timer(&ax25->dtimer);
  } else {
   struct sock *sk=ax25->sk;
   ax25->sk=((void*)0);
   sock_put(sk);
  }
 } else {
  ax25_cb_put(ax25);
 }
}
