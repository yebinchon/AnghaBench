
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {scalar_t__ type; } ;
struct ieee802154_llsec_table {int dummy; } ;
struct TYPE_2__ {struct ieee802154_llsec_table table; } ;
struct ieee802154_sub_if_data {TYPE_1__ sec; } ;


 scalar_t__ ARPHRD_IEEE802154 ;
 int BUG_ON (int) ;
 struct ieee802154_sub_if_data* IEEE802154_DEV_TO_SUB_IF (struct net_device*) ;

void mac802154_get_table(struct net_device *dev,
    struct ieee802154_llsec_table **t)
{
 struct ieee802154_sub_if_data *sdata = IEEE802154_DEV_TO_SUB_IF(dev);

 BUG_ON(dev->type != ARPHRD_IEEE802154);

 *t = &sdata->sec.table;
}
