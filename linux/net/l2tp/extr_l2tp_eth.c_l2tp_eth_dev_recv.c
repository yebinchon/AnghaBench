
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int ip_summed; int data; int len; } ;
struct net_device {int dummy; } ;
struct l2tp_session {int debug; int name; } ;
struct l2tp_eth_sess {int dev; } ;
struct l2tp_eth {int rx_errors; int rx_bytes; int rx_packets; } ;


 int CHECKSUM_NONE ;
 int DUMP_PREFIX_OFFSET ;
 unsigned int ETH_HLEN ;
 int L2TP_MSG_DATA ;
 scalar_t__ NET_RX_SUCCESS ;
 int atomic_long_add (int,int *) ;
 int atomic_long_inc (int *) ;
 scalar_t__ dev_forward_skb (struct net_device*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 struct l2tp_eth_sess* l2tp_session_priv (struct l2tp_session*) ;
 unsigned int min (unsigned int,int ) ;
 struct l2tp_eth* netdev_priv (struct net_device*) ;
 int nf_reset_ct (struct sk_buff*) ;
 int pr_debug (char*,int ) ;
 int print_hex_dump_bytes (char*,int ,int ,unsigned int) ;
 int pskb_may_pull (struct sk_buff*,unsigned int) ;
 struct net_device* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int secpath_reset (struct sk_buff*) ;
 int skb_dst_drop (struct sk_buff*) ;

__attribute__((used)) static void l2tp_eth_dev_recv(struct l2tp_session *session, struct sk_buff *skb, int data_len)
{
 struct l2tp_eth_sess *spriv = l2tp_session_priv(session);
 struct net_device *dev;
 struct l2tp_eth *priv;

 if (session->debug & L2TP_MSG_DATA) {
  unsigned int length;

  length = min(32u, skb->len);
  if (!pskb_may_pull(skb, length))
   goto error;

  pr_debug("%s: eth recv\n", session->name);
  print_hex_dump_bytes("", DUMP_PREFIX_OFFSET, skb->data, length);
 }

 if (!pskb_may_pull(skb, ETH_HLEN))
  goto error;

 secpath_reset(skb);


 skb->ip_summed = CHECKSUM_NONE;

 skb_dst_drop(skb);
 nf_reset_ct(skb);

 rcu_read_lock();
 dev = rcu_dereference(spriv->dev);
 if (!dev)
  goto error_rcu;

 priv = netdev_priv(dev);
 if (dev_forward_skb(dev, skb) == NET_RX_SUCCESS) {
  atomic_long_inc(&priv->rx_packets);
  atomic_long_add(data_len, &priv->rx_bytes);
 } else {
  atomic_long_inc(&priv->rx_errors);
 }
 rcu_read_unlock();

 return;

error_rcu:
 rcu_read_unlock();
error:
 kfree_skb(skb);
}
