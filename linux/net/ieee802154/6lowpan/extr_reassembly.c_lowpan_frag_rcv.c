
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dev; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int lock; } ;
struct lowpan_frag_queue {TYPE_1__ q; } ;
struct lowpan_802154_cb {scalar_t__ d_size; } ;
struct ieee802154_hdr {int dest; int source; } ;


 scalar_t__ IPV6_MIN_MTU ;
 int LOWPAN_DISPATCH_FRAG1 ;
 int NET_RX_DROP ;
 struct net* dev_net (int ) ;
 struct lowpan_frag_queue* fq_find (struct net*,struct lowpan_802154_cb*,int *,int *) ;
 scalar_t__ ieee802154_hdr_peek_addrs (struct sk_buff*,struct ieee802154_hdr*) ;
 int inet_frag_put (TYPE_1__*) ;
 int kfree_skb (struct sk_buff*) ;
 struct lowpan_802154_cb* lowpan_802154_cb (struct sk_buff*) ;
 int lowpan_frag_queue (struct lowpan_frag_queue*,struct sk_buff*,int ) ;
 int lowpan_get_cb (struct sk_buff*,int ,struct lowpan_802154_cb*) ;
 int lowpan_invoke_frag_rx_handlers (struct sk_buff*) ;
 int net_warn_ratelimited (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int lowpan_frag_rcv(struct sk_buff *skb, u8 frag_type)
{
 struct lowpan_frag_queue *fq;
 struct net *net = dev_net(skb->dev);
 struct lowpan_802154_cb *cb = lowpan_802154_cb(skb);
 struct ieee802154_hdr hdr = {};
 int err;

 if (ieee802154_hdr_peek_addrs(skb, &hdr) < 0)
  goto err;

 err = lowpan_get_cb(skb, frag_type, cb);
 if (err < 0)
  goto err;

 if (frag_type == LOWPAN_DISPATCH_FRAG1) {
  err = lowpan_invoke_frag_rx_handlers(skb);
  if (err == NET_RX_DROP)
   goto err;
 }

 if (cb->d_size > IPV6_MIN_MTU) {
  net_warn_ratelimited("lowpan_frag_rcv: datagram size exceeds MTU\n");
  goto err;
 }

 fq = fq_find(net, cb, &hdr.source, &hdr.dest);
 if (fq != ((void*)0)) {
  int ret;

  spin_lock(&fq->q.lock);
  ret = lowpan_frag_queue(fq, skb, frag_type);
  spin_unlock(&fq->q.lock);

  inet_frag_put(&fq->q);
  return ret;
 }

err:
 kfree_skb(skb);
 return -1;
}
