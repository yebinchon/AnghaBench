
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct net_device {int name; } ;
typedef int netdev_tx_t ;
typedef int bdaddr_t ;
struct TYPE_2__ {scalar_t__ chan; int addr; } ;


 int BT_DBG (char*,int,...) ;
 int ENOENT ;
 int GFP_ATOMIC ;
 int NET_XMIT_DROP ;
 int dev_kfree_skb (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 TYPE_1__* lowpan_cb (struct sk_buff*) ;
 int send_mcast_pkt (struct sk_buff*,struct net_device*) ;
 int send_pkt (scalar_t__,struct sk_buff*,struct net_device*) ;
 int setup_header (struct sk_buff*,struct net_device*,int *,int *) ;
 struct sk_buff* skb_unshare (struct sk_buff*,int ) ;

__attribute__((used)) static netdev_tx_t bt_xmit(struct sk_buff *skb, struct net_device *netdev)
{
 int err = 0;
 bdaddr_t addr;
 u8 addr_type;




 skb = skb_unshare(skb, GFP_ATOMIC);
 if (!skb)
  return NET_XMIT_DROP;






 err = setup_header(skb, netdev, &addr, &addr_type);
 if (err < 0) {
  kfree_skb(skb);
  return NET_XMIT_DROP;
 }

 if (err) {
  if (lowpan_cb(skb)->chan) {
   BT_DBG("xmit %s to %pMR type %d IP %pI6c chan %p",
          netdev->name, &addr, addr_type,
          &lowpan_cb(skb)->addr, lowpan_cb(skb)->chan);
   err = send_pkt(lowpan_cb(skb)->chan, skb, netdev);
  } else {
   err = -ENOENT;
  }
 } else {



  err = send_mcast_pkt(skb, netdev);
 }

 dev_kfree_skb(skb);

 if (err)
  BT_DBG("ERROR: xmit failed (%d)", err);

 return err < 0 ? NET_XMIT_DROP : err;
}
