
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned int len; } ;
struct iphdr {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int ip_hdr (struct sk_buff*) ;
 int ip_is_fragment (int ) ;
 int pskb_may_pull (struct sk_buff*,unsigned int) ;
 int skb_network_offset (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int tcf_ct_ipv4_is_fragment(struct sk_buff *skb, bool *frag)
{
 unsigned int len;

 len = skb_network_offset(skb) + sizeof(struct iphdr);
 if (unlikely(skb->len < len))
  return -EINVAL;
 if (unlikely(!pskb_may_pull(skb, len)))
  return -ENOMEM;

 *frag = ip_is_fragment(ip_hdr(skb));
 return 0;
}
