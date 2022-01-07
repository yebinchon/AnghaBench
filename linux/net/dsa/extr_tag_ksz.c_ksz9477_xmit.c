
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct dsa_port {int index; } ;


 int BIT (int ) ;
 int KSZ9477_INGRESS_TAG_LEN ;
 int KSZ9477_TAIL_TAG_OVERRIDE ;
 int cpu_to_be16 (int ) ;
 struct dsa_port* dsa_slave_to_port (struct net_device*) ;
 scalar_t__ is_link_local_ether_addr (int *) ;
 struct sk_buff* ksz_common_xmit (struct sk_buff*,struct net_device*,int ) ;
 int * skb_mac_header (struct sk_buff*) ;
 int * skb_put (struct sk_buff*,int ) ;

__attribute__((used)) static struct sk_buff *ksz9477_xmit(struct sk_buff *skb,
        struct net_device *dev)
{
 struct dsa_port *dp = dsa_slave_to_port(dev);
 struct sk_buff *nskb;
 u16 *tag;
 u8 *addr;

 nskb = ksz_common_xmit(skb, dev, KSZ9477_INGRESS_TAG_LEN);
 if (!nskb)
  return ((void*)0);


 tag = skb_put(nskb, KSZ9477_INGRESS_TAG_LEN);
 addr = skb_mac_header(nskb);

 *tag = BIT(dp->index);

 if (is_link_local_ether_addr(addr))
  *tag |= KSZ9477_TAIL_TAG_OVERRIDE;

 *tag = cpu_to_be16(*tag);

 return nskb;
}
