
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int len; int data_len; } ;
struct TYPE_2__ {int nr_frags; int * frags; } ;


 int skb_frag_off_add (int *,int const) ;
 int skb_frag_ref (struct sk_buff*,int) ;
 int skb_frag_size (int *) ;
 int skb_frag_size_set (int *,int const) ;
 int skb_frag_size_sub (int *,int const) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static inline void skb_split_no_header(struct sk_buff *skb,
           struct sk_buff* skb1,
           const u32 len, int pos)
{
 int i, k = 0;
 const int nfrags = skb_shinfo(skb)->nr_frags;

 skb_shinfo(skb)->nr_frags = 0;
 skb1->len = skb1->data_len = skb->len - len;
 skb->len = len;
 skb->data_len = len - pos;

 for (i = 0; i < nfrags; i++) {
  int size = skb_frag_size(&skb_shinfo(skb)->frags[i]);

  if (pos + size > len) {
   skb_shinfo(skb1)->frags[k] = skb_shinfo(skb)->frags[i];

   if (pos < len) {
    skb_frag_ref(skb, i);
    skb_frag_off_add(&skb_shinfo(skb1)->frags[0], len - pos);
    skb_frag_size_sub(&skb_shinfo(skb1)->frags[0], len - pos);
    skb_frag_size_set(&skb_shinfo(skb)->frags[i], len - pos);
    skb_shinfo(skb)->nr_frags++;
   }
   k++;
  } else
   skb_shinfo(skb)->nr_frags++;
  pos += size;
 }
 skb_shinfo(skb1)->nr_frags = k;
}
