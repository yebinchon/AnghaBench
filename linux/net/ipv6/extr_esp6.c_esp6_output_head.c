
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct page_frag {int offset; struct page* page; } ;
struct xfrm_state {int lock; struct page_frag xfrag; } ;
struct sock {int sk_wmem_alloc; } ;
struct sk_buff {int len; int data_len; int truesize; struct sock* sk; } ;
struct page {int dummy; } ;
struct esp_info {int tailen; int inplace; int proto; int plen; int tfclen; } ;
struct TYPE_2__ {int nr_frags; } ;


 int ALIGN (int,int ) ;
 int GFP_ATOMIC ;
 int L1_CACHE_BYTES ;
 int MAX_SKB_FRAGS ;
 int __skb_fill_page_desc (struct sk_buff*,int,struct page*,int,int) ;
 int esp_output_fill_trailer (int *,int ,int ,int ) ;
 int get_page (struct page*) ;
 int * kmap_atomic (struct page*) ;
 int kunmap_atomic (int *) ;
 int pskb_put (struct sk_buff*,struct sk_buff*,int) ;
 int refcount_add (int,int *) ;
 scalar_t__ sk_fullsock (struct sock*) ;
 int skb_cloned (struct sk_buff*) ;
 int skb_cow_data (struct sk_buff*,int,struct sk_buff**) ;
 int skb_has_frag_list (struct sk_buff*) ;
 int skb_page_frag_refill (int,struct page_frag*,int ) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int * skb_tail_pointer (struct sk_buff*) ;
 int skb_tailroom (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ unlikely (int) ;

int esp6_output_head(struct xfrm_state *x, struct sk_buff *skb, struct esp_info *esp)
{
 u8 *tail;
 u8 *vaddr;
 int nfrags;
 struct page *page;
 struct sk_buff *trailer;
 int tailen = esp->tailen;

 if (!skb_cloned(skb)) {
  if (tailen <= skb_tailroom(skb)) {
   nfrags = 1;
   trailer = skb;
   tail = skb_tail_pointer(trailer);

   goto skip_cow;
  } else if ((skb_shinfo(skb)->nr_frags < MAX_SKB_FRAGS)
      && !skb_has_frag_list(skb)) {
   int allocsize;
   struct sock *sk = skb->sk;
   struct page_frag *pfrag = &x->xfrag;

   esp->inplace = 0;

   allocsize = ALIGN(tailen, L1_CACHE_BYTES);

   spin_lock_bh(&x->lock);

   if (unlikely(!skb_page_frag_refill(allocsize, pfrag, GFP_ATOMIC))) {
    spin_unlock_bh(&x->lock);
    goto cow;
   }

   page = pfrag->page;
   get_page(page);

   vaddr = kmap_atomic(page);

   tail = vaddr + pfrag->offset;

   esp_output_fill_trailer(tail, esp->tfclen, esp->plen, esp->proto);

   kunmap_atomic(vaddr);

   nfrags = skb_shinfo(skb)->nr_frags;

   __skb_fill_page_desc(skb, nfrags, page, pfrag->offset,
          tailen);
   skb_shinfo(skb)->nr_frags = ++nfrags;

   pfrag->offset = pfrag->offset + allocsize;

   spin_unlock_bh(&x->lock);

   nfrags++;

   skb->len += tailen;
   skb->data_len += tailen;
   skb->truesize += tailen;
   if (sk && sk_fullsock(sk))
    refcount_add(tailen, &sk->sk_wmem_alloc);

   goto out;
  }
 }

cow:
 nfrags = skb_cow_data(skb, tailen, &trailer);
 if (nfrags < 0)
  goto out;
 tail = skb_tail_pointer(trailer);

skip_cow:
 esp_output_fill_trailer(tail, esp->tfclen, esp->plen, esp->proto);
 pskb_put(skb, trailer, tailen);

out:
 return nfrags;
}
