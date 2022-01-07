
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct inet_frag_queue {struct sk_buff* fragments_tail; struct sk_buff* last_run_head; } ;
struct TYPE_2__ {struct sk_buff* next_frag; int frag_run_len; } ;


 TYPE_1__* FRAG_CB (struct sk_buff*) ;
 int fragcb_clear (struct sk_buff*) ;

__attribute__((used)) static void fragrun_append_to_last(struct inet_frag_queue *q,
       struct sk_buff *skb)
{
 fragcb_clear(skb);

 FRAG_CB(q->last_run_head)->frag_run_len += skb->len;
 FRAG_CB(q->fragments_tail)->next_frag = skb;
 q->fragments_tail = skb;
}
