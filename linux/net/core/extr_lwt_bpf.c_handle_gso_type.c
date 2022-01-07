
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skb_shared_info {unsigned int gso_type; scalar_t__ gso_segs; } ;
struct sk_buff {int dummy; } ;


 unsigned int SKB_GSO_DODGY ;
 int skb_decrease_gso_size (struct skb_shared_info*,int) ;
 struct skb_shared_info* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static int handle_gso_type(struct sk_buff *skb, unsigned int gso_type,
      int encap_len)
{
 struct skb_shared_info *shinfo = skb_shinfo(skb);

 gso_type |= SKB_GSO_DODGY;
 shinfo->gso_type |= gso_type;
 skb_decrease_gso_size(shinfo, encap_len);
 shinfo->gso_segs = 0;
 return 0;
}
