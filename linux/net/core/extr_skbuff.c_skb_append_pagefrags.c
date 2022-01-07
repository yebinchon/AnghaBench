
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_2__ {int nr_frags; int * frags; } ;


 int EMSGSIZE ;
 int MAX_SKB_FRAGS ;
 int get_page (struct page*) ;
 scalar_t__ skb_can_coalesce (struct sk_buff*,int,struct page*,int) ;
 int skb_fill_page_desc (struct sk_buff*,int,struct page*,int,size_t) ;
 int skb_frag_size_add (int *,size_t) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

int skb_append_pagefrags(struct sk_buff *skb, struct page *page,
    int offset, size_t size)
{
 int i = skb_shinfo(skb)->nr_frags;

 if (skb_can_coalesce(skb, i, page, offset)) {
  skb_frag_size_add(&skb_shinfo(skb)->frags[i - 1], size);
 } else if (i < MAX_SKB_FRAGS) {
  get_page(page);
  skb_fill_page_desc(skb, i, page, offset, size);
 } else {
  return -EMSGSIZE;
 }

 return 0;
}
