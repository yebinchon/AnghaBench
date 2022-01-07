
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; int data_len; unsigned int truesize; } ;
typedef int skb_frag_t ;
struct TYPE_2__ {int * frags; } ;


 int skb_frag_size_add (int *,int) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

void skb_coalesce_rx_frag(struct sk_buff *skb, int i, int size,
     unsigned int truesize)
{
 skb_frag_t *frag = &skb_shinfo(skb)->frags[i];

 skb_frag_size_add(frag, size);
 skb->len += size;
 skb->data_len += size;
 skb->truesize += truesize;
}
