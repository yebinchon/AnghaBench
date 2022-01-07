
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct TYPE_10__ {int tx_bytes; int tx_packets; int tx_dropped; int tx_errors; } ;
struct net_device {TYPE_4__ stats; } ;
struct TYPE_9__ {TYPE_5__* dn; } ;
struct TYPE_8__ {scalar_t__ protocol; } ;
struct chnl_net {TYPE_3__ chnl; TYPE_2__ conn_req; int flowenabled; TYPE_1__* netdev; } ;
struct cfpkt {int dummy; } ;
struct TYPE_12__ {int daddr; int saddr; } ;
struct TYPE_11__ {int (* transmit ) (TYPE_5__*,struct cfpkt*) ;} ;
struct TYPE_7__ {scalar_t__ mtu; } ;


 scalar_t__ CAIFPROTO_DATAGRAM_LOOP ;
 int CAIF_DIR_OUT ;
 int NETDEV_TX_OK ;
 struct cfpkt* cfpkt_fromnative (int ,void*) ;
 TYPE_6__* ip_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 struct chnl_net* netdev_priv (struct net_device*) ;
 int pr_debug (char*) ;
 int pr_warn (char*) ;
 int stub1 (TYPE_5__*,struct cfpkt*) ;
 int swap (int ,int ) ;

__attribute__((used)) static int chnl_net_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct chnl_net *priv;
 struct cfpkt *pkt = ((void*)0);
 int len;
 int result = -1;

 priv = netdev_priv(dev);

 if (skb->len > priv->netdev->mtu) {
  pr_warn("Size of skb exceeded MTU\n");
  kfree_skb(skb);
  dev->stats.tx_errors++;
  return NETDEV_TX_OK;
 }

 if (!priv->flowenabled) {
  pr_debug("dropping packets flow off\n");
  kfree_skb(skb);
  dev->stats.tx_dropped++;
  return NETDEV_TX_OK;
 }

 if (priv->conn_req.protocol == CAIFPROTO_DATAGRAM_LOOP)
  swap(ip_hdr(skb)->saddr, ip_hdr(skb)->daddr);


 len = skb->len;

 pkt = cfpkt_fromnative(CAIF_DIR_OUT, (void *) skb);


 result = priv->chnl.dn->transmit(priv->chnl.dn, pkt);
 if (result) {
  dev->stats.tx_dropped++;
  return NETDEV_TX_OK;
 }


 dev->stats.tx_packets++;
 dev->stats.tx_bytes += len;

 return NETDEV_TX_OK;
}
