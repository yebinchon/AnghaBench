
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct rose_sock {unsigned short va; int ack_queue; } ;


 int ROSE_MODULUS ;
 int kfree_skb (struct sk_buff*) ;
 struct rose_sock* rose_sk (struct sock*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int * skb_peek (int *) ;

void rose_frames_acked(struct sock *sk, unsigned short nr)
{
 struct sk_buff *skb;
 struct rose_sock *rose = rose_sk(sk);




 if (rose->va != nr) {
  while (skb_peek(&rose->ack_queue) != ((void*)0) && rose->va != nr) {
   skb = skb_dequeue(&rose->ack_queue);
   kfree_skb(skb);
   rose->va = (rose->va + 1) % ROSE_MODULUS;
  }
 }
}
