
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_write_queue; } ;
struct sk_buff {int dummy; } ;
struct nr_sock {scalar_t__ state; int condition; unsigned short va; unsigned short vs; int window; int vr; int vl; int ack_queue; } ;


 int GFP_ATOMIC ;
 int NR_COND_ACK_PENDING ;
 int NR_COND_PEER_RX_BUSY ;
 int NR_MODULUS ;
 scalar_t__ NR_STATE_3 ;
 int nr_send_iframe (struct sock*,struct sk_buff*) ;
 struct nr_sock* nr_sk (struct sock*) ;
 int nr_start_t1timer (struct sock*) ;
 int nr_t1timer_running (struct sock*) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 struct sk_buff* skb_dequeue (int *) ;
 int * skb_peek (int *) ;
 int skb_queue_head (int *,struct sk_buff*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int skb_set_owner_w (struct sk_buff*,struct sock*) ;

void nr_kick(struct sock *sk)
{
 struct nr_sock *nr = nr_sk(sk);
 struct sk_buff *skb, *skbn;
 unsigned short start, end;

 if (nr->state != NR_STATE_3)
  return;

 if (nr->condition & NR_COND_PEER_RX_BUSY)
  return;

 if (!skb_peek(&sk->sk_write_queue))
  return;

 start = (skb_peek(&nr->ack_queue) == ((void*)0)) ? nr->va : nr->vs;
 end = (nr->va + nr->window) % NR_MODULUS;

 if (start == end)
  return;

 nr->vs = start;
 skb = skb_dequeue(&sk->sk_write_queue);

 do {
  if ((skbn = skb_clone(skb, GFP_ATOMIC)) == ((void*)0)) {
   skb_queue_head(&sk->sk_write_queue, skb);
   break;
  }

  skb_set_owner_w(skbn, sk);




  nr_send_iframe(sk, skbn);

  nr->vs = (nr->vs + 1) % NR_MODULUS;




  skb_queue_tail(&nr->ack_queue, skb);

 } while (nr->vs != end &&
   (skb = skb_dequeue(&sk->sk_write_queue)) != ((void*)0));

 nr->vl = nr->vr;
 nr->condition &= ~NR_COND_ACK_PENDING;

 if (!nr_t1timer_running(sk))
  nr_start_t1timer(sk);
}
