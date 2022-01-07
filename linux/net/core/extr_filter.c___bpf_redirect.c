
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;


 int __bpf_redirect_common (struct sk_buff*,struct net_device*,int ) ;
 int __bpf_redirect_no_mac (struct sk_buff*,struct net_device*,int ) ;
 scalar_t__ dev_is_mac_header_xmit (struct net_device*) ;

__attribute__((used)) static int __bpf_redirect(struct sk_buff *skb, struct net_device *dev,
     u32 flags)
{
 if (dev_is_mac_header_xmit(dev))
  return __bpf_redirect_common(skb, dev, flags);
 else
  return __bpf_redirect_no_mac(skb, dev, flags);
}
