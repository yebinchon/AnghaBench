
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpan_dev {int frame_retries; int csma_retries; int max_be; int min_be; int lbt; int short_addr; int extended_addr; int pan_id; int promiscuous_mode; } ;
struct ieee802154_sub_if_data {struct wpan_dev wpan_dev; struct ieee802154_local* local; } ;
struct TYPE_2__ {int flags; } ;
struct ieee802154_local {TYPE_1__ hw; } ;


 int IEEE802154_HW_AFILT ;
 int IEEE802154_HW_CSMA_PARAMS ;
 int IEEE802154_HW_FRAME_RETRIES ;
 int IEEE802154_HW_LBT ;
 int IEEE802154_HW_PROMISCUOUS ;
 int drv_set_csma_params (struct ieee802154_local*,int ,int ,int ) ;
 int drv_set_extended_addr (struct ieee802154_local*,int ) ;
 int drv_set_lbt_mode (struct ieee802154_local*,int ) ;
 int drv_set_max_frame_retries (struct ieee802154_local*,int ) ;
 int drv_set_pan_id (struct ieee802154_local*,int ) ;
 int drv_set_promiscuous_mode (struct ieee802154_local*,int ) ;
 int drv_set_short_addr (struct ieee802154_local*,int ) ;

__attribute__((used)) static int ieee802154_setup_hw(struct ieee802154_sub_if_data *sdata)
{
 struct ieee802154_local *local = sdata->local;
 struct wpan_dev *wpan_dev = &sdata->wpan_dev;
 int ret;

 if (local->hw.flags & IEEE802154_HW_PROMISCUOUS) {
  ret = drv_set_promiscuous_mode(local,
            wpan_dev->promiscuous_mode);
  if (ret < 0)
   return ret;
 }

 if (local->hw.flags & IEEE802154_HW_AFILT) {
  ret = drv_set_pan_id(local, wpan_dev->pan_id);
  if (ret < 0)
   return ret;

  ret = drv_set_extended_addr(local, wpan_dev->extended_addr);
  if (ret < 0)
   return ret;

  ret = drv_set_short_addr(local, wpan_dev->short_addr);
  if (ret < 0)
   return ret;
 }

 if (local->hw.flags & IEEE802154_HW_LBT) {
  ret = drv_set_lbt_mode(local, wpan_dev->lbt);
  if (ret < 0)
   return ret;
 }

 if (local->hw.flags & IEEE802154_HW_CSMA_PARAMS) {
  ret = drv_set_csma_params(local, wpan_dev->min_be,
       wpan_dev->max_be,
       wpan_dev->csma_retries);
  if (ret < 0)
   return ret;
 }

 if (local->hw.flags & IEEE802154_HW_FRAME_RETRIES) {
  ret = drv_set_max_frame_retries(local, wpan_dev->frame_retries);
  if (ret < 0)
   return ret;
 }

 return 0;
}
