
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpan_dev {int lbt; int frame_retries; int csma_retries; int max_be; int min_be; TYPE_1__* wpan_phy; } ;
struct net_device {int dummy; } ;
struct ieee802154_sub_if_data {struct wpan_dev wpan_dev; } ;
struct ieee802154_mac_params {int lbt; int frame_retries; int csma_retries; int max_be; int min_be; int cca_ed_level; int cca; int transmit_power; } ;
struct TYPE_2__ {int cca_ed_level; int cca; int transmit_power; } ;


 int ASSERT_RTNL () ;
 struct ieee802154_sub_if_data* IEEE802154_DEV_TO_SUB_IF (struct net_device*) ;

__attribute__((used)) static void mac802154_get_mac_params(struct net_device *dev,
         struct ieee802154_mac_params *params)
{
 struct ieee802154_sub_if_data *sdata = IEEE802154_DEV_TO_SUB_IF(dev);
 struct wpan_dev *wpan_dev = &sdata->wpan_dev;

 ASSERT_RTNL();


 params->transmit_power = wpan_dev->wpan_phy->transmit_power;
 params->cca = wpan_dev->wpan_phy->cca;
 params->cca_ed_level = wpan_dev->wpan_phy->cca_ed_level;


 params->min_be = wpan_dev->min_be;
 params->max_be = wpan_dev->max_be;
 params->csma_retries = wpan_dev->csma_retries;
 params->frame_retries = wpan_dev->frame_retries;
 params->lbt = wpan_dev->lbt;
}
