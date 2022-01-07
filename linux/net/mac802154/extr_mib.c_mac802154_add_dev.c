
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ type; } ;
struct ieee802154_sub_if_data {int sec_mtx; int sec; } ;
struct ieee802154_llsec_device {int dummy; } ;


 scalar_t__ ARPHRD_IEEE802154 ;
 int BUG_ON (int) ;
 struct ieee802154_sub_if_data* IEEE802154_DEV_TO_SUB_IF (struct net_device*) ;
 int mac802154_llsec_dev_add (int *,struct ieee802154_llsec_device const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mac802154_add_dev(struct net_device *dev,
        const struct ieee802154_llsec_device *llsec_dev)
{
 struct ieee802154_sub_if_data *sdata = IEEE802154_DEV_TO_SUB_IF(dev);
 int res;

 BUG_ON(dev->type != ARPHRD_IEEE802154);

 mutex_lock(&sdata->sec_mtx);
 res = mac802154_llsec_dev_add(&sdata->sec, llsec_dev);
 mutex_unlock(&sdata->sec_mtx);

 return res;
}
