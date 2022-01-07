
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpan_dev {scalar_t__ promiscuous_mode; scalar_t__ pan_id; scalar_t__ short_addr; scalar_t__ extended_addr; scalar_t__ min_be; scalar_t__ max_be; scalar_t__ csma_retries; scalar_t__ frame_retries; scalar_t__ lbt; } ;
struct TYPE_2__ {int flags; } ;
struct ieee802154_local {TYPE_1__ hw; } ;


 int ASSERT_RTNL () ;
 int EBUSY ;
 int IEEE802154_HW_AFILT ;
 int IEEE802154_HW_CSMA_PARAMS ;
 int IEEE802154_HW_FRAME_RETRIES ;
 int IEEE802154_HW_LBT ;
 int IEEE802154_HW_PROMISCUOUS ;

__attribute__((used)) static int
ieee802154_check_mac_settings(struct ieee802154_local *local,
         struct wpan_dev *wpan_dev,
         struct wpan_dev *nwpan_dev)
{
 ASSERT_RTNL();

 if (local->hw.flags & IEEE802154_HW_PROMISCUOUS) {
  if (wpan_dev->promiscuous_mode != nwpan_dev->promiscuous_mode)
   return -EBUSY;
 }

 if (local->hw.flags & IEEE802154_HW_AFILT) {
  if (wpan_dev->pan_id != nwpan_dev->pan_id ||
      wpan_dev->short_addr != nwpan_dev->short_addr ||
      wpan_dev->extended_addr != nwpan_dev->extended_addr)
   return -EBUSY;
 }

 if (local->hw.flags & IEEE802154_HW_CSMA_PARAMS) {
  if (wpan_dev->min_be != nwpan_dev->min_be ||
      wpan_dev->max_be != nwpan_dev->max_be ||
      wpan_dev->csma_retries != nwpan_dev->csma_retries)
   return -EBUSY;
 }

 if (local->hw.flags & IEEE802154_HW_FRAME_RETRIES) {
  if (wpan_dev->frame_retries != nwpan_dev->frame_retries)
   return -EBUSY;
 }

 if (local->hw.flags & IEEE802154_HW_LBT) {
  if (wpan_dev->lbt != nwpan_dev->lbt)
   return -EBUSY;
 }

 return 0;
}
