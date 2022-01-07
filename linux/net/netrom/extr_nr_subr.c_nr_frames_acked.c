
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nr_sock {unsigned short va; int ack_queue; } ;


 int NR_MODULUS ;
 int kfree_skb (struct sk_buff*) ;
 struct nr_sock* nr_sk (struct sock*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int * skb_peek (int *) ;

void nr_frames_acked(struct sock *sk, unsigned short nr)
{
 struct nr_sock *nrom = nr_sk(sk);
 struct sk_buff *skb;




 if (nrom->va != nr) {
  while (skb_peek(&nrom->ack_queue) != ((void*)0) && nrom->va != nr) {
   skb = skb_dequeue(&nrom->ack_queue);
   kfree_skb(skb);
   nrom->va = (nrom->va + 1) % NR_MODULUS;
  }
 }
}
