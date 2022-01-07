
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int data_len; unsigned int truesize; } ;
struct page {int dummy; } ;


 int skb_fill_page_desc (struct sk_buff*,int,struct page*,int,int) ;

void skb_add_rx_frag(struct sk_buff *skb, int i, struct page *page, int off,
       int size, unsigned int truesize)
{
 skb_fill_page_desc(skb, i, page, off, size);
 skb->len += size;
 skb->data_len += size;
 skb->truesize += truesize;
}
