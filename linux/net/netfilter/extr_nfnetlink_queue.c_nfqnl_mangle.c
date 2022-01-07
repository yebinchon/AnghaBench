
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int ip_summed; } ;
struct nf_queue_entry {struct sk_buff* skb; } ;


 int CHECKSUM_NONE ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ pskb_trim (struct sk_buff*,int) ;
 struct sk_buff* skb_copy_expand (struct sk_buff*,int ,int,int ) ;
 int skb_copy_to_linear_data (struct sk_buff*,void*,int) ;
 scalar_t__ skb_ensure_writable (struct sk_buff*,int) ;
 int skb_headroom (struct sk_buff*) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_tailroom (struct sk_buff*) ;

__attribute__((used)) static int
nfqnl_mangle(void *data, int data_len, struct nf_queue_entry *e, int diff)
{
 struct sk_buff *nskb;

 if (diff < 0) {
  if (pskb_trim(e->skb, data_len))
   return -ENOMEM;
 } else if (diff > 0) {
  if (data_len > 0xFFFF)
   return -EINVAL;
  if (diff > skb_tailroom(e->skb)) {
   nskb = skb_copy_expand(e->skb, skb_headroom(e->skb),
            diff, GFP_ATOMIC);
   if (!nskb)
    return -ENOMEM;
   kfree_skb(e->skb);
   e->skb = nskb;
  }
  skb_put(e->skb, diff);
 }
 if (skb_ensure_writable(e->skb, data_len))
  return -ENOMEM;
 skb_copy_to_linear_data(e->skb, data, data_len);
 e->skb->ip_summed = CHECKSUM_NONE;
 return 0;
}
