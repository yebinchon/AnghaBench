
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int users; int dev; int protocol; int len; } ;
struct pktgen_dev {scalar_t__ delay; int last_ok; scalar_t__ clone_count; scalar_t__ clone_skb; scalar_t__ xmit_mode; scalar_t__ sofar; scalar_t__ count; struct sk_buff* skb; int errors; int odevname; int last_pkt_size; int tx_bytes; int seq_num; int next_tx; struct net_device* odev; int burst; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;


 int HARD_TX_LOCK (struct net_device*,struct netdev_queue*,int ) ;
 int HARD_TX_UNLOCK (struct net_device*,struct netdev_queue*) ;
 scalar_t__ M_NETIF_RECEIVE ;
 scalar_t__ M_QUEUE_XMIT ;


 int NET_RX_DROP ;



 unsigned int READ_ONCE (int ) ;
 scalar_t__ ULLONG_MAX ;
 int ULONG_MAX ;
 int WARN_ON (int ) ;
 int dev_queue_xmit (struct sk_buff*) ;
 int eth_type_trans (struct sk_buff*,int ) ;
 struct sk_buff* fill_packet (struct net_device*,struct pktgen_dev*) ;
 int kfree_skb (struct sk_buff*) ;
 int ktime_add_ns (int ,int ) ;
 int ktime_get () ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int net_info_ratelimited (char*,int ,int) ;
 int netdev_start_xmit (struct sk_buff*,struct net_device*,struct netdev_queue*,int) ;
 int netif_carrier_ok (struct net_device*) ;
 int netif_receive_skb (struct sk_buff*) ;
 int netif_running (struct net_device*) ;
 unsigned int netif_xmit_frozen_or_drv_stopped (struct netdev_queue*) ;
 int pktgen_stop_device (struct pktgen_dev*) ;
 int pktgen_wait_for_skb (struct pktgen_dev*) ;
 int pr_err (char*) ;
 int refcount_add (unsigned int,int *) ;
 int refcount_dec (int *) ;
 int refcount_inc (int *) ;
 unsigned int refcount_read (int *) ;
 int refcount_sub_and_test (unsigned int,int *) ;
 int schedule () ;
 struct netdev_queue* skb_get_tx_queue (struct net_device*,struct sk_buff*) ;
 int skb_reset_tc (struct sk_buff*) ;
 int smp_processor_id () ;
 int spin (struct pktgen_dev*,int ) ;
 scalar_t__ unlikely (unsigned int) ;

__attribute__((used)) static void pktgen_xmit(struct pktgen_dev *pkt_dev)
{
 unsigned int burst = READ_ONCE(pkt_dev->burst);
 struct net_device *odev = pkt_dev->odev;
 struct netdev_queue *txq;
 struct sk_buff *skb;
 int ret;


 if (unlikely(!netif_running(odev) || !netif_carrier_ok(odev))) {
  pktgen_stop_device(pkt_dev);
  return;
 }




 if (unlikely(pkt_dev->delay == ULLONG_MAX)) {
  pkt_dev->next_tx = ktime_add_ns(ktime_get(), ULONG_MAX);
  return;
 }


 if (!pkt_dev->skb || (pkt_dev->last_ok &&
         ++pkt_dev->clone_count >= pkt_dev->clone_skb)) {

  kfree_skb(pkt_dev->skb);

  pkt_dev->skb = fill_packet(odev, pkt_dev);
  if (pkt_dev->skb == ((void*)0)) {
   pr_err("ERROR: couldn't allocate skb in fill_packet\n");
   schedule();
   pkt_dev->clone_count--;
   return;
  }
  pkt_dev->last_pkt_size = pkt_dev->skb->len;
  pkt_dev->clone_count = 0;
 }

 if (pkt_dev->delay && pkt_dev->last_ok)
  spin(pkt_dev, pkt_dev->next_tx);

 if (pkt_dev->xmit_mode == M_NETIF_RECEIVE) {
  skb = pkt_dev->skb;
  skb->protocol = eth_type_trans(skb, skb->dev);
  refcount_add(burst, &skb->users);
  local_bh_disable();
  do {
   ret = netif_receive_skb(skb);
   if (ret == NET_RX_DROP)
    pkt_dev->errors++;
   pkt_dev->sofar++;
   pkt_dev->seq_num++;
   if (refcount_read(&skb->users) != burst) {



    WARN_ON(refcount_sub_and_test(burst - 1, &skb->users));



    break;
   }



   skb_reset_tc(skb);
  } while (--burst > 0);
  goto out;
 } else if (pkt_dev->xmit_mode == M_QUEUE_XMIT) {
  local_bh_disable();
  refcount_inc(&pkt_dev->skb->users);

  ret = dev_queue_xmit(pkt_dev->skb);
  switch (ret) {
  case 128:
   pkt_dev->sofar++;
   pkt_dev->seq_num++;
   pkt_dev->tx_bytes += pkt_dev->last_pkt_size;
   break;
  case 129:
  case 130:




  case 132:





  default:
   pkt_dev->errors++;
   net_info_ratelimited("%s xmit error: %d\n",
          pkt_dev->odevname, ret);
   break;
  }
  goto out;
 }

 txq = skb_get_tx_queue(odev, pkt_dev->skb);

 local_bh_disable();

 HARD_TX_LOCK(odev, txq, smp_processor_id());

 if (unlikely(netif_xmit_frozen_or_drv_stopped(txq))) {
  ret = 132;
  pkt_dev->last_ok = 0;
  goto unlock;
 }
 refcount_add(burst, &pkt_dev->skb->users);

xmit_more:
 ret = netdev_start_xmit(pkt_dev->skb, odev, txq, --burst > 0);

 switch (ret) {
 case 131:
  pkt_dev->last_ok = 1;
  pkt_dev->sofar++;
  pkt_dev->seq_num++;
  pkt_dev->tx_bytes += pkt_dev->last_pkt_size;
  if (burst > 0 && !netif_xmit_frozen_or_drv_stopped(txq))
   goto xmit_more;
  break;
 case 129:
 case 130:

  pkt_dev->errors++;
  break;
 default:
  net_info_ratelimited("%s xmit error: %d\n",
         pkt_dev->odevname, ret);
  pkt_dev->errors++;

 case 132:

  refcount_dec(&(pkt_dev->skb->users));
  pkt_dev->last_ok = 0;
 }
 if (unlikely(burst))
  WARN_ON(refcount_sub_and_test(burst, &pkt_dev->skb->users));
unlock:
 HARD_TX_UNLOCK(odev, txq);

out:
 local_bh_enable();


 if ((pkt_dev->count != 0) && (pkt_dev->sofar >= pkt_dev->count)) {
  pktgen_wait_for_skb(pkt_dev);


  pktgen_stop_device(pkt_dev);
 }
}
