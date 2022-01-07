
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_write_queue; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int ack_queue; } ;


 int skb_append (struct sk_buff*,struct sk_buff*,int *) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_head (int *,struct sk_buff*) ;
 TYPE_1__* x25_sk (struct sock*) ;

void x25_requeue_frames(struct sock *sk)
{
 struct sk_buff *skb, *skb_prev = ((void*)0);






 while ((skb = skb_dequeue(&x25_sk(sk)->ack_queue)) != ((void*)0)) {
  if (!skb_prev)
   skb_queue_head(&sk->sk_write_queue, skb);
  else
   skb_append(skb_prev, skb, &sk->sk_write_queue);
  skb_prev = skb;
 }
}
