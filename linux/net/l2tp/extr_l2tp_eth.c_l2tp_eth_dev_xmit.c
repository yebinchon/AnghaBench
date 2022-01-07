
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned int len; } ;
struct net_device {int dummy; } ;
struct l2tp_session {int hdr_len; } ;
struct l2tp_eth {int tx_dropped; int tx_packets; int tx_bytes; struct l2tp_session* session; } ;


 int NETDEV_TX_OK ;
 int NET_XMIT_SUCCESS ;
 int atomic_long_add (unsigned int,int *) ;
 int atomic_long_inc (int *) ;
 int l2tp_xmit_skb (struct l2tp_session*,struct sk_buff*,int ) ;
 scalar_t__ likely (int) ;
 struct l2tp_eth* netdev_priv (struct net_device*) ;

__attribute__((used)) static int l2tp_eth_dev_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct l2tp_eth *priv = netdev_priv(dev);
 struct l2tp_session *session = priv->session;
 unsigned int len = skb->len;
 int ret = l2tp_xmit_skb(session, skb, session->hdr_len);

 if (likely(ret == NET_XMIT_SUCCESS)) {
  atomic_long_add(len, &priv->tx_bytes);
  atomic_long_inc(&priv->tx_packets);
 } else {
  atomic_long_inc(&priv->tx_dropped);
 }
 return NETDEV_TX_OK;
}
