
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dev; } ;
struct net_device {int dummy; } ;
struct hsr_priv {int dummy; } ;
struct hsr_port {int dev; } ;


 int HSR_PT_MASTER ;
 int NETDEV_TX_OK ;
 int hsr_forward_skb (struct sk_buff*,struct hsr_port*) ;
 struct hsr_port* hsr_port_get_hsr (struct hsr_priv*,int ) ;
 struct hsr_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int hsr_dev_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct hsr_priv *hsr = netdev_priv(dev);
 struct hsr_port *master;

 master = hsr_port_get_hsr(hsr, HSR_PT_MASTER);
 skb->dev = master->dev;
 hsr_forward_skb(skb, master);
 return NETDEV_TX_OK;
}
