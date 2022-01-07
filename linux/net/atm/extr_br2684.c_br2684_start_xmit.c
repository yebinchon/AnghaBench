
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int tx_fifo_errors; int tx_errors; int tx_dropped; int tx_carrier_errors; } ;
struct net_device {TYPE_1__ stats; int name; } ;
struct br2684_vcc {int device; struct atm_vcc* atmvcc; } ;
struct br2684_dev {int dummy; } ;
struct atm_vcc {int flags; } ;
typedef int netdev_tx_t ;


 int ATM_VF_CLOSE ;
 int ATM_VF_READY ;
 int ATM_VF_RELEASED ;
 struct br2684_dev* BRPRIV (struct net_device*) ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int bh_lock_sock (int ) ;
 int bh_unlock_sock (int ) ;
 int br2684_xmit_vcc (struct sk_buff*,struct net_device*,struct br2684_vcc*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int devs_lock ;
 int netif_stop_queue (int ) ;
 struct br2684_vcc* pick_outgoing_vcc (struct sk_buff*,struct br2684_dev*) ;
 int pr_debug (char*,int ) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int sk_atm (struct atm_vcc*) ;
 int skb_dst (struct sk_buff*) ;
 scalar_t__ sock_owned_by_user (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static netdev_tx_t br2684_start_xmit(struct sk_buff *skb,
         struct net_device *dev)
{
 struct br2684_dev *brdev = BRPRIV(dev);
 struct br2684_vcc *brvcc;
 struct atm_vcc *atmvcc;
 netdev_tx_t ret = NETDEV_TX_OK;

 pr_debug("skb_dst(skb)=%p\n", skb_dst(skb));
 read_lock(&devs_lock);
 brvcc = pick_outgoing_vcc(skb, brdev);
 if (brvcc == ((void*)0)) {
  pr_debug("no vcc attached to dev %s\n", dev->name);
  dev->stats.tx_errors++;
  dev->stats.tx_carrier_errors++;

  dev_kfree_skb(skb);
  goto out_devs;
 }
 atmvcc = brvcc->atmvcc;

 bh_lock_sock(sk_atm(atmvcc));

 if (test_bit(ATM_VF_RELEASED, &atmvcc->flags) ||
     test_bit(ATM_VF_CLOSE, &atmvcc->flags) ||
     !test_bit(ATM_VF_READY, &atmvcc->flags)) {
  dev->stats.tx_dropped++;
  dev_kfree_skb(skb);
  goto out;
 }

 if (sock_owned_by_user(sk_atm(atmvcc))) {
  netif_stop_queue(brvcc->device);
  ret = NETDEV_TX_BUSY;
  goto out;
 }

 if (!br2684_xmit_vcc(skb, dev, brvcc)) {







  dev->stats.tx_errors++;
  dev->stats.tx_fifo_errors++;
 }
 out:
 bh_unlock_sock(sk_atm(atmvcc));
 out_devs:
 read_unlock(&devs_lock);
 return ret;
}
