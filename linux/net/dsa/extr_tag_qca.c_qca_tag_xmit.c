
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {scalar_t__ data; scalar_t__ len; } ;
struct TYPE_2__ {int tx_bytes; int tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct dsa_port {int index; } ;


 int BIT (int ) ;
 int ETH_ALEN ;
 scalar_t__ QCA_HDR_LEN ;
 int QCA_HDR_VERSION ;
 int QCA_HDR_XMIT_FROM_CPU ;
 int QCA_HDR_XMIT_VERSION_S ;
 struct dsa_port* dsa_slave_to_port (struct net_device*) ;
 int htons (int) ;
 int memmove (scalar_t__,scalar_t__,int) ;
 scalar_t__ skb_cow_head (struct sk_buff*,int ) ;
 int skb_push (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static struct sk_buff *qca_tag_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct dsa_port *dp = dsa_slave_to_port(dev);
 u16 *phdr, hdr;

 dev->stats.tx_packets++;
 dev->stats.tx_bytes += skb->len;

 if (skb_cow_head(skb, 0) < 0)
  return ((void*)0);

 skb_push(skb, QCA_HDR_LEN);

 memmove(skb->data, skb->data + QCA_HDR_LEN, 2 * ETH_ALEN);
 phdr = (u16 *)(skb->data + 2 * ETH_ALEN);


 hdr = QCA_HDR_VERSION << QCA_HDR_XMIT_VERSION_S |
  QCA_HDR_XMIT_FROM_CPU | BIT(dp->index);

 *phdr = htons(hdr);

 return skb;
}
