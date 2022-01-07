
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct net_device {int dev; } ;
struct dsa_port {int index; } ;


 int ETH_ALEN ;
 int ETH_P_8021Q ;
 scalar_t__ LAN9303_TAG_LEN ;
 int LAN9303_TAG_TX_STP_OVERRIDE ;
 int LAN9303_TAG_TX_USE_ALR ;
 int dev_dbg (int *,char*) ;
 struct dsa_port* dsa_slave_to_port (struct net_device*) ;
 int htons (int) ;
 scalar_t__ lan9303_xmit_use_arl (struct dsa_port*,scalar_t__) ;
 int memmove (scalar_t__,scalar_t__,int) ;
 scalar_t__ skb_cow_head (struct sk_buff*,scalar_t__) ;
 int skb_push (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static struct sk_buff *lan9303_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct dsa_port *dp = dsa_slave_to_port(dev);
 u16 *lan9303_tag;




 if (skb_cow_head(skb, LAN9303_TAG_LEN) < 0) {
  dev_dbg(&dev->dev,
   "Cannot make room for the special tag. Dropping packet\n");
  return ((void*)0);
 }


 skb_push(skb, LAN9303_TAG_LEN);


 memmove(skb->data, skb->data + LAN9303_TAG_LEN, 2 * ETH_ALEN);

 lan9303_tag = (u16 *)(skb->data + 2 * ETH_ALEN);
 lan9303_tag[0] = htons(ETH_P_8021Q);
 lan9303_tag[1] = lan9303_xmit_use_arl(dp, skb->data) ?
    LAN9303_TAG_TX_USE_ALR :
    dp->index | LAN9303_TAG_TX_STP_OVERRIDE;
 lan9303_tag[1] = htons(lan9303_tag[1]);

 return skb;
}
