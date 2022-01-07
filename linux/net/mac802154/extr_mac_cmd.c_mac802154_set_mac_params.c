
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wpan_dev {int lbt; int frame_retries; int csma_retries; int max_be; int min_be; TYPE_1__* wpan_phy; } ;
struct net_device {int dummy; } ;
struct ieee802154_sub_if_data {struct wpan_dev wpan_dev; struct ieee802154_local* local; } ;
struct ieee802154_mac_params {int cca_ed_level; int cca; int transmit_power; int lbt; int frame_retries; int csma_retries; int max_be; int min_be; } ;
struct TYPE_6__ {TYPE_2__* phy; } ;
struct ieee802154_local {TYPE_3__ hw; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int cca_ed_level; int cca; int transmit_power; } ;


 int ASSERT_RTNL () ;
 struct ieee802154_sub_if_data* IEEE802154_DEV_TO_SUB_IF (struct net_device*) ;
 int WPAN_PHY_FLAG_CCA_ED_LEVEL ;
 int WPAN_PHY_FLAG_CCA_MODE ;
 int WPAN_PHY_FLAG_TXPOWER ;
 int drv_set_cca_ed_level (struct ieee802154_local*,int ) ;
 int drv_set_cca_mode (struct ieee802154_local*,int *) ;
 int drv_set_tx_power (struct ieee802154_local*,int ) ;

__attribute__((used)) static int mac802154_set_mac_params(struct net_device *dev,
        const struct ieee802154_mac_params *params)
{
 struct ieee802154_sub_if_data *sdata = IEEE802154_DEV_TO_SUB_IF(dev);
 struct ieee802154_local *local = sdata->local;
 struct wpan_dev *wpan_dev = &sdata->wpan_dev;
 int ret;

 ASSERT_RTNL();


 wpan_dev->wpan_phy->transmit_power = params->transmit_power;
 wpan_dev->wpan_phy->cca = params->cca;
 wpan_dev->wpan_phy->cca_ed_level = params->cca_ed_level;


 wpan_dev->min_be = params->min_be;
 wpan_dev->max_be = params->max_be;
 wpan_dev->csma_retries = params->csma_retries;
 wpan_dev->frame_retries = params->frame_retries;
 wpan_dev->lbt = params->lbt;

 if (local->hw.phy->flags & WPAN_PHY_FLAG_TXPOWER) {
  ret = drv_set_tx_power(local, params->transmit_power);
  if (ret < 0)
   return ret;
 }

 if (local->hw.phy->flags & WPAN_PHY_FLAG_CCA_MODE) {
  ret = drv_set_cca_mode(local, &params->cca);
  if (ret < 0)
   return ret;
 }

 if (local->hw.phy->flags & WPAN_PHY_FLAG_CCA_ED_LEVEL) {
  ret = drv_set_cca_ed_level(local, params->cca_ed_level);
  if (ret < 0)
   return ret;
 }

 return 0;
}
