
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ type; } ;
struct ieee802154_sub_if_data {int sec_mtx; int sec; } ;
struct ieee802154_llsec_seclevel {int dummy; } ;


 scalar_t__ ARPHRD_IEEE802154 ;
 int BUG_ON (int) ;
 struct ieee802154_sub_if_data* IEEE802154_DEV_TO_SUB_IF (struct net_device*) ;
 int mac802154_llsec_seclevel_del (int *,struct ieee802154_llsec_seclevel const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mac802154_del_seclevel(struct net_device *dev,
      const struct ieee802154_llsec_seclevel *sl)
{
 struct ieee802154_sub_if_data *sdata = IEEE802154_DEV_TO_SUB_IF(dev);
 int res;

 BUG_ON(dev->type != ARPHRD_IEEE802154);

 mutex_lock(&sdata->sec_mtx);
 res = mac802154_llsec_seclevel_del(&sdata->sec, sl);
 mutex_unlock(&sdata->sec_mtx);

 return res;
}
