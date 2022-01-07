
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ truesize; scalar_t__ len; int data_len; struct sk_buff* next; } ;
struct TYPE_2__ {struct sk_buff* frag_list; } ;


 int skb_has_frag_list (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void append_skb_frag(struct sk_buff *skb, struct sk_buff *new_frag,
       struct sk_buff **last_frag)
{



 if (!skb_has_frag_list(skb))
  skb_shinfo(skb)->frag_list = new_frag;

 new_frag->next = ((void*)0);

 (*last_frag)->next = new_frag;
 *last_frag = new_frag;

 skb->len += new_frag->len;
 skb->data_len += new_frag->len;
 skb->truesize += new_frag->truesize;
}
