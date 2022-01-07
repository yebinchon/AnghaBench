
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skb_shared_info {int nr_frags; } ;
struct sk_buff {int dummy; } ;
struct page {int dummy; } ;


 void* page_address (struct page*) ;
 int page_ref_inc (struct page*) ;
 int skb_add_rx_frag (struct sk_buff*,int ,struct page*,int,int,int) ;
 struct skb_shared_info* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void
__frame_add_frag(struct sk_buff *skb, struct page *page,
   void *ptr, int len, int size)
{
 struct skb_shared_info *sh = skb_shinfo(skb);
 int page_offset;

 page_ref_inc(page);
 page_offset = ptr - page_address(page);
 skb_add_rx_frag(skb, sh->nr_frags, page, page_offset, len, size);
}
