
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ protocol; } ;
struct net_device {int dummy; } ;
struct iphdr {int tos; int saddr; int daddr; } ;
struct TYPE_4__ {int (* ipv6_route_input ) (struct sk_buff*) ;} ;
struct TYPE_3__ {struct net_device* dev; } ;


 int EAFNOSUPPORT ;
 int EINVAL ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int dev_hold (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int dst_input (struct sk_buff*) ;
 scalar_t__ htons (int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ip_route_input_noref (struct sk_buff*,int ,int ,int ,struct net_device*) ;
 TYPE_2__* ipv6_stub ;
 int kfree_skb (struct sk_buff*) ;
 TYPE_1__* skb_dst (struct sk_buff*) ;
 int skb_dst_drop (struct sk_buff*) ;
 int stub1 (struct sk_buff*) ;

__attribute__((used)) static int bpf_lwt_input_reroute(struct sk_buff *skb)
{
 int err = -EINVAL;

 if (skb->protocol == htons(ETH_P_IP)) {
  struct net_device *dev = skb_dst(skb)->dev;
  struct iphdr *iph = ip_hdr(skb);

  dev_hold(dev);
  skb_dst_drop(skb);
  err = ip_route_input_noref(skb, iph->daddr, iph->saddr,
        iph->tos, dev);
  dev_put(dev);
 } else if (skb->protocol == htons(ETH_P_IPV6)) {
  skb_dst_drop(skb);
  err = ipv6_stub->ipv6_route_input(skb);
 } else {
  err = -EAFNOSUPPORT;
 }

 if (err)
  goto err;
 return dst_input(skb);

err:
 kfree_skb(skb);
 return err;
}
