
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ieee802154_sub_if_data {int sec; } ;


 struct ieee802154_sub_if_data* IEEE802154_DEV_TO_SUB_IF (struct net_device*) ;
 int mac802154_llsec_destroy (int *) ;

__attribute__((used)) static void mac802154_wpan_free(struct net_device *dev)
{
 struct ieee802154_sub_if_data *sdata = IEEE802154_DEV_TO_SUB_IF(dev);

 mac802154_llsec_destroy(&sdata->sec);
}
