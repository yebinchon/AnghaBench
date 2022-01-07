
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct net_device* dev; } ;
struct net_device {int hard_header_len; } ;
struct dn_ifaddr {int ifa_local; } ;
typedef int __le16 ;


 int DN_RT_PKT_HELO ;
 int ETH_ALEN ;
 int GFP_ATOMIC ;
 struct sk_buff* dn_alloc_skb (int *,int,int ) ;
 int dn_dn2eth (char*,int ) ;
 int dn_rt_all_rt_mcast ;
 int dn_rt_finish_output (struct sk_buff*,int ,char*) ;
 int skb_push (struct sk_buff*,int ) ;
 unsigned char* skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void dn_send_ptp_hello(struct net_device *dev, struct dn_ifaddr *ifa)
{
 int tdlen = 16;
 int size = dev->hard_header_len + 2 + 4 + tdlen;
 struct sk_buff *skb = dn_alloc_skb(((void*)0), size, GFP_ATOMIC);
 int i;
 unsigned char *ptr;
 char src[ETH_ALEN];

 if (skb == ((void*)0))
  return ;

 skb->dev = dev;
 skb_push(skb, dev->hard_header_len);
 ptr = skb_put(skb, 2 + 4 + tdlen);

 *ptr++ = DN_RT_PKT_HELO;
 *((__le16 *)ptr) = ifa->ifa_local;
 ptr += 2;
 *ptr++ = tdlen;

 for(i = 0; i < tdlen; i++)
  *ptr++ = 0252;

 dn_dn2eth(src, ifa->ifa_local);
 dn_rt_finish_output(skb, dn_rt_all_rt_mcast, src);
}
