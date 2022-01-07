
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; int rbnode; } ;
struct TYPE_2__ {int frag_run_len; int * next_frag; } ;


 TYPE_1__* FRAG_CB (struct sk_buff*) ;
 int RB_CLEAR_NODE (int *) ;

__attribute__((used)) static void fragcb_clear(struct sk_buff *skb)
{
 RB_CLEAR_NODE(&skb->rbnode);
 FRAG_CB(skb)->next_frag = ((void*)0);
 FRAG_CB(skb)->frag_run_len = skb->len;
}
