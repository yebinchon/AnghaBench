
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skb_seq_state {unsigned int lower_offset; unsigned int upper_offset; int * frag_data; scalar_t__ stepped_offset; scalar_t__ frag_idx; struct sk_buff* cur_skb; struct sk_buff* root_skb; } ;
struct sk_buff {int dummy; } ;



void skb_prepare_seq_read(struct sk_buff *skb, unsigned int from,
     unsigned int to, struct skb_seq_state *st)
{
 st->lower_offset = from;
 st->upper_offset = to;
 st->root_skb = st->cur_skb = skb;
 st->frag_idx = st->stepped_offset = 0;
 st->frag_data = ((void*)0);
}
