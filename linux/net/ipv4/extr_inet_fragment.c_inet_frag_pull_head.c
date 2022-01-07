
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int truesize; int rbnode; } ;
struct inet_frag_queue {int fqdir; struct sk_buff* fragments_tail; int rb_fragments; } ;
struct TYPE_2__ {struct sk_buff* next_frag; } ;


 TYPE_1__* FRAG_CB (struct sk_buff*) ;
 int barrier () ;
 int memset (int *,int ,int) ;
 int rb_erase (int *,int *) ;
 int rb_replace_node (int *,int *,int *) ;
 struct sk_buff* skb_rb_first (int *) ;
 int sub_frag_mem_limit (int ,int ) ;

struct sk_buff *inet_frag_pull_head(struct inet_frag_queue *q)
{
 struct sk_buff *head, *skb;

 head = skb_rb_first(&q->rb_fragments);
 if (!head)
  return ((void*)0);
 skb = FRAG_CB(head)->next_frag;
 if (skb)
  rb_replace_node(&head->rbnode, &skb->rbnode,
    &q->rb_fragments);
 else
  rb_erase(&head->rbnode, &q->rb_fragments);
 memset(&head->rbnode, 0, sizeof(head->rbnode));
 barrier();

 if (head == q->fragments_tail)
  q->fragments_tail = ((void*)0);

 sub_frag_mem_limit(q->fqdir, head->truesize);

 return head;
}
