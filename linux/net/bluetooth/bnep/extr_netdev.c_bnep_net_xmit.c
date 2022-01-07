
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_write_queue; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct bnep_session {TYPE_1__* sock; } ;
typedef int netdev_tx_t ;
struct TYPE_2__ {struct sock* sk; } ;


 scalar_t__ BNEP_TX_QUEUE_LEN ;
 int BT_DBG (char*,...) ;
 int NETDEV_TX_OK ;
 scalar_t__ bnep_net_mc_filter (struct sk_buff*,struct bnep_session*) ;
 scalar_t__ bnep_net_proto_filter (struct sk_buff*,struct bnep_session*) ;
 int kfree_skb (struct sk_buff*) ;
 struct bnep_session* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_trans_update (struct net_device*) ;
 int sk_sleep (struct sock*) ;
 scalar_t__ skb_queue_len (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int wake_up_interruptible (int ) ;

__attribute__((used)) static netdev_tx_t bnep_net_xmit(struct sk_buff *skb,
     struct net_device *dev)
{
 struct bnep_session *s = netdev_priv(dev);
 struct sock *sk = s->sock->sk;

 BT_DBG("skb %p, dev %p", skb, dev);
 netif_trans_update(dev);
 skb_queue_tail(&sk->sk_write_queue, skb);
 wake_up_interruptible(sk_sleep(sk));

 if (skb_queue_len(&sk->sk_write_queue) >= BNEP_TX_QUEUE_LEN) {
  BT_DBG("tx queue is full");



  netif_stop_queue(dev);
 }

 return NETDEV_TX_OK;
}
