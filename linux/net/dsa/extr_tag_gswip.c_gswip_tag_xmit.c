
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int* data; } ;
struct net_device {int dummy; } ;
struct dsa_port {scalar_t__ index; } ;


 int BIT (scalar_t__) ;
 int GSWIP_TX_DPID_ELAN ;
 int GSWIP_TX_DPID_EN ;
 int GSWIP_TX_HEADER_LEN ;
 int GSWIP_TX_PORT_MAP_EN ;
 int GSWIP_TX_PORT_MAP_MASK ;
 int GSWIP_TX_PORT_MAP_SEL ;
 scalar_t__ GSWIP_TX_PORT_MAP_SHIFT ;
 int GSWIP_TX_SLPID_CPU ;
 struct dsa_port* dsa_slave_to_port (struct net_device*) ;
 int skb_cow_head (struct sk_buff*,int ) ;
 int skb_push (struct sk_buff*,int ) ;

__attribute__((used)) static struct sk_buff *gswip_tag_xmit(struct sk_buff *skb,
          struct net_device *dev)
{
 struct dsa_port *dp = dsa_slave_to_port(dev);
 int err;
 u8 *gswip_tag;

 err = skb_cow_head(skb, GSWIP_TX_HEADER_LEN);
 if (err)
  return ((void*)0);

 skb_push(skb, GSWIP_TX_HEADER_LEN);

 gswip_tag = skb->data;
 gswip_tag[0] = GSWIP_TX_SLPID_CPU;
 gswip_tag[1] = GSWIP_TX_DPID_ELAN;
 gswip_tag[2] = GSWIP_TX_PORT_MAP_EN | GSWIP_TX_PORT_MAP_SEL;
 gswip_tag[3] = BIT(dp->index + GSWIP_TX_PORT_MAP_SHIFT) & GSWIP_TX_PORT_MAP_MASK;
 gswip_tag[3] |= GSWIP_TX_DPID_EN;

 return skb;
}
