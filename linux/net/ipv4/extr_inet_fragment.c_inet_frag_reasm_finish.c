
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rb_node {int dummy; } ;
struct sk_buff {int truesize; scalar_t__ ip_summed; int tstamp; int * prev; struct sk_buff* next; scalar_t__ len; int data_len; int * sk; struct rb_node rbnode; int csum; scalar_t__ data; } ;
struct inet_frag_queue {int stamp; int fqdir; int rb_fragments; } ;
struct TYPE_2__ {struct sk_buff* next_frag; } ;


 scalar_t__ CHECKSUM_COMPLETE ;
 scalar_t__ CHECKSUM_NONE ;
 TYPE_1__* FRAG_CB (struct sk_buff*) ;
 int csum_add (int ,int ) ;
 int kfree_skb_partial (struct sk_buff*,int) ;
 int memset (struct rb_node*,int ,int) ;
 int rb_erase (struct rb_node*,int *) ;
 struct rb_node* rb_next (struct rb_node*) ;
 struct sk_buff* rb_to_skb (struct rb_node*) ;
 int skb_mark_not_on_list (struct sk_buff*) ;
 scalar_t__ skb_network_header (struct sk_buff*) ;
 int skb_push (struct sk_buff*,scalar_t__) ;
 scalar_t__ skb_try_coalesce (struct sk_buff*,struct sk_buff*,int*,int*) ;
 int sub_frag_mem_limit (int ,int) ;

void inet_frag_reasm_finish(struct inet_frag_queue *q, struct sk_buff *head,
       void *reasm_data, bool try_coalesce)
{
 struct sk_buff **nextp = (struct sk_buff **)reasm_data;
 struct rb_node *rbn;
 struct sk_buff *fp;
 int sum_truesize;

 skb_push(head, head->data - skb_network_header(head));


 fp = FRAG_CB(head)->next_frag;
 rbn = rb_next(&head->rbnode);
 rb_erase(&head->rbnode, &q->rb_fragments);

 sum_truesize = head->truesize;
 while (rbn || fp) {




  while (fp) {
   struct sk_buff *next_frag = FRAG_CB(fp)->next_frag;
   bool stolen;
   int delta;

   sum_truesize += fp->truesize;
   if (head->ip_summed != fp->ip_summed)
    head->ip_summed = CHECKSUM_NONE;
   else if (head->ip_summed == CHECKSUM_COMPLETE)
    head->csum = csum_add(head->csum, fp->csum);

   if (try_coalesce && skb_try_coalesce(head, fp, &stolen,
            &delta)) {
    kfree_skb_partial(fp, stolen);
   } else {
    fp->prev = ((void*)0);
    memset(&fp->rbnode, 0, sizeof(fp->rbnode));
    fp->sk = ((void*)0);

    head->data_len += fp->len;
    head->len += fp->len;
    head->truesize += fp->truesize;

    *nextp = fp;
    nextp = &fp->next;
   }

   fp = next_frag;
  }

  if (rbn) {
   struct rb_node *rbnext = rb_next(rbn);

   fp = rb_to_skb(rbn);
   rb_erase(rbn, &q->rb_fragments);
   rbn = rbnext;
  }
 }
 sub_frag_mem_limit(q->fqdir, sum_truesize);

 *nextp = ((void*)0);
 skb_mark_not_on_list(head);
 head->prev = ((void*)0);
 head->tstamp = q->stamp;
}
