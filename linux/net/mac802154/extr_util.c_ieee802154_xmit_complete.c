
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sk_buff {scalar_t__ len; } ;
struct ieee802154_local {int ifs_timer; } ;
struct ieee802154_hw {int flags; TYPE_1__* phy; } ;
struct TYPE_2__ {int lifs_period; int sifs_period; } ;


 int HRTIMER_MODE_REL ;
 scalar_t__ IEEE802154_FCS_LEN ;
 int IEEE802154_HW_TX_OMIT_CKSUM ;
 scalar_t__ IEEE802154_MAX_SIFS_FRAME_SIZE ;
 int NSEC_PER_USEC ;
 int dev_consume_skb_any (struct sk_buff*) ;
 int hrtimer_start (int *,int,int ) ;
 struct ieee802154_local* hw_to_local (struct ieee802154_hw*) ;
 int ieee802154_wake_queue (struct ieee802154_hw*) ;

void ieee802154_xmit_complete(struct ieee802154_hw *hw, struct sk_buff *skb,
         bool ifs_handling)
{
 if (ifs_handling) {
  struct ieee802154_local *local = hw_to_local(hw);
  u8 max_sifs_size;





  if (hw->flags & IEEE802154_HW_TX_OMIT_CKSUM)
   max_sifs_size = IEEE802154_MAX_SIFS_FRAME_SIZE -
     IEEE802154_FCS_LEN;
  else
   max_sifs_size = IEEE802154_MAX_SIFS_FRAME_SIZE;

  if (skb->len > max_sifs_size)
   hrtimer_start(&local->ifs_timer,
          hw->phy->lifs_period * NSEC_PER_USEC,
          HRTIMER_MODE_REL);
  else
   hrtimer_start(&local->ifs_timer,
          hw->phy->sifs_period * NSEC_PER_USEC,
          HRTIMER_MODE_REL);
 } else {
  ieee802154_wake_queue(hw);
 }

 dev_consume_skb_any(skb);
}
