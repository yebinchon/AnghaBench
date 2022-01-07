
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {scalar_t__ protocol; int len; } ;
struct net {int dummy; } ;
struct iphdr {int ihl; int version; int tot_len; } ;
struct inet_skb_parm {int dummy; } ;
typedef int iph ;


 int ETH_P_IP ;
 int GFP_ATOMIC ;
 int IPCB (struct sk_buff*) ;
 scalar_t__ htons (int ) ;
 scalar_t__ ip_defrag (struct net*,struct sk_buff*,int) ;
 scalar_t__ ip_is_fragment (struct iphdr*) ;
 int kfree_skb (struct sk_buff*) ;
 int memset (int ,int ,int) ;
 int ntohs (int ) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 scalar_t__ pskb_trim_rcsum (struct sk_buff*,int) ;
 int skb_clear_hash (struct sk_buff*) ;
 scalar_t__ skb_copy_bits (struct sk_buff*,int,struct iphdr*,int) ;
 int skb_network_offset (struct sk_buff*) ;
 struct sk_buff* skb_share_check (struct sk_buff*,int ) ;

struct sk_buff *ip_check_defrag(struct net *net, struct sk_buff *skb, u32 user)
{
 struct iphdr iph;
 int netoff;
 u32 len;

 if (skb->protocol != htons(ETH_P_IP))
  return skb;

 netoff = skb_network_offset(skb);

 if (skb_copy_bits(skb, netoff, &iph, sizeof(iph)) < 0)
  return skb;

 if (iph.ihl < 5 || iph.version != 4)
  return skb;

 len = ntohs(iph.tot_len);
 if (skb->len < netoff + len || len < (iph.ihl * 4))
  return skb;

 if (ip_is_fragment(&iph)) {
  skb = skb_share_check(skb, GFP_ATOMIC);
  if (skb) {
   if (!pskb_may_pull(skb, netoff + iph.ihl * 4)) {
    kfree_skb(skb);
    return ((void*)0);
   }
   if (pskb_trim_rcsum(skb, netoff + len)) {
    kfree_skb(skb);
    return ((void*)0);
   }
   memset(IPCB(skb), 0, sizeof(struct inet_skb_parm));
   if (ip_defrag(net, skb, user))
    return ((void*)0);
   skb_clear_hash(skb);
  }
 }
 return skb;
}
