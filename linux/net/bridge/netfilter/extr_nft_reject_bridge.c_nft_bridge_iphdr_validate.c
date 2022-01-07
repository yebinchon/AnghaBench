
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int len; } ;
struct iphdr {int ihl; int version; int tot_len; } ;


 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ntohs (int ) ;
 int pskb_may_pull (struct sk_buff*,int) ;

__attribute__((used)) static int nft_bridge_iphdr_validate(struct sk_buff *skb)
{
 struct iphdr *iph;
 u32 len;

 if (!pskb_may_pull(skb, sizeof(struct iphdr)))
  return 0;

 iph = ip_hdr(skb);
 if (iph->ihl < 5 || iph->version != 4)
  return 0;

 len = ntohs(iph->tot_len);
 if (skb->len < len)
  return 0;
 else if (len < (iph->ihl*4))
  return 0;

 if (!pskb_may_pull(skb, iph->ihl*4))
  return 0;

 return 1;
}
