
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int ip_defrag_offset; int len; int rbnode; } ;
struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; } ;
struct TYPE_3__ {struct rb_node* rb_node; } ;
struct inet_frag_queue {TYPE_1__ rb_fragments; struct sk_buff* fragments_tail; } ;
struct TYPE_4__ {int frag_run_len; } ;


 TYPE_2__* FRAG_CB (struct sk_buff*) ;
 int IPFRAG_DUP ;
 int IPFRAG_OK ;
 int IPFRAG_OVERLAP ;
 int fragcb_clear (struct sk_buff*) ;
 int fragrun_append_to_last (struct inet_frag_queue*,struct sk_buff*) ;
 int fragrun_create (struct inet_frag_queue*,struct sk_buff*) ;
 int rb_insert_color (int *,TYPE_1__*) ;
 int rb_link_node (int *,struct rb_node*,struct rb_node**) ;
 struct sk_buff* rb_to_skb (struct rb_node*) ;

int inet_frag_queue_insert(struct inet_frag_queue *q, struct sk_buff *skb,
      int offset, int end)
{
 struct sk_buff *last = q->fragments_tail;
 if (!last)
  fragrun_create(q, skb);
 else if (last->ip_defrag_offset + last->len < end) {


  if (offset < last->ip_defrag_offset + last->len)
   return IPFRAG_OVERLAP;
  if (offset == last->ip_defrag_offset + last->len)
   fragrun_append_to_last(q, skb);
  else
   fragrun_create(q, skb);
 } else {



  struct rb_node **rbn, *parent;

  rbn = &q->rb_fragments.rb_node;
  do {
   struct sk_buff *curr;
   int curr_run_end;

   parent = *rbn;
   curr = rb_to_skb(parent);
   curr_run_end = curr->ip_defrag_offset +
     FRAG_CB(curr)->frag_run_len;
   if (end <= curr->ip_defrag_offset)
    rbn = &parent->rb_left;
   else if (offset >= curr_run_end)
    rbn = &parent->rb_right;
   else if (offset >= curr->ip_defrag_offset &&
     end <= curr_run_end)
    return IPFRAG_DUP;
   else
    return IPFRAG_OVERLAP;
  } while (*rbn);



  fragcb_clear(skb);
  rb_link_node(&skb->rbnode, parent, rbn);
  rb_insert_color(&skb->rbnode, &q->rb_fragments);
 }

 skb->ip_defrag_offset = offset;

 return IPFRAG_OK;
}
