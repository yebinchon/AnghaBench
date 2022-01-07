
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct tipc_link {scalar_t__ rcv_nxt; scalar_t__ snd_nxt; int deferdq; } ;
struct sk_buff {int dummy; } ;


 scalar_t__ buf_seqno (struct sk_buff*) ;
 scalar_t__ more (scalar_t__,scalar_t__) ;
 struct sk_buff* skb_peek (int *) ;

__attribute__((used)) static u16 link_bc_rcv_gap(struct tipc_link *l)
{
 struct sk_buff *skb = skb_peek(&l->deferdq);
 u16 gap = 0;

 if (more(l->snd_nxt, l->rcv_nxt))
  gap = l->snd_nxt - l->rcv_nxt;
 if (skb)
  gap = buf_seqno(skb) - l->rcv_nxt;
 return gap;
}
