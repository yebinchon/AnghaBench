
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sk_buff {scalar_t__ len; scalar_t__ data_len; } ;
struct TYPE_2__ {int nr_frags; int * frags; } ;


 int skb_copy_from_linear_data_offset (struct sk_buff*,scalar_t__ const,int ,scalar_t__ const) ;
 int skb_put (struct sk_buff*,scalar_t__ const) ;
 int skb_set_tail_pointer (struct sk_buff*,scalar_t__ const) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static inline void skb_split_inside_header(struct sk_buff *skb,
        struct sk_buff* skb1,
        const u32 len, const int pos)
{
 int i;

 skb_copy_from_linear_data_offset(skb, len, skb_put(skb1, pos - len),
      pos - len);

 for (i = 0; i < skb_shinfo(skb)->nr_frags; i++)
  skb_shinfo(skb1)->frags[i] = skb_shinfo(skb)->frags[i];

 skb_shinfo(skb1)->nr_frags = skb_shinfo(skb)->nr_frags;
 skb_shinfo(skb)->nr_frags = 0;
 skb1->data_len = skb->data_len;
 skb1->len += skb1->data_len;
 skb->data_len = 0;
 skb->len = len;
 skb_set_tail_pointer(skb, len);
}
