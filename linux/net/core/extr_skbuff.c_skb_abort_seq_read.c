
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skb_seq_state {scalar_t__ frag_data; } ;


 int kunmap_atomic (scalar_t__) ;

void skb_abort_seq_read(struct skb_seq_state *st)
{
 if (st->frag_data)
  kunmap_atomic(st->frag_data);
}
