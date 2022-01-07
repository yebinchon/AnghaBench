
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int encapsulation; scalar_t__ ip_summed; } ;
struct TYPE_2__ {int gso_type; } ;


 scalar_t__ CHECKSUM_NONE ;
 scalar_t__ CHECKSUM_PARTIAL ;
 int GFP_ATOMIC ;
 scalar_t__ likely (int) ;
 int skb_header_unclone (struct sk_buff*,int ) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 int skb_reset_inner_headers (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

int iptunnel_handle_offloads(struct sk_buff *skb,
        int gso_type_mask)
{
 int err;

 if (likely(!skb->encapsulation)) {
  skb_reset_inner_headers(skb);
  skb->encapsulation = 1;
 }

 if (skb_is_gso(skb)) {
  err = skb_header_unclone(skb, GFP_ATOMIC);
  if (unlikely(err))
   return err;
  skb_shinfo(skb)->gso_type |= gso_type_mask;
  return 0;
 }

 if (skb->ip_summed != CHECKSUM_PARTIAL) {
  skb->ip_summed = CHECKSUM_NONE;





  skb->encapsulation = 0;
 }

 return 0;
}
