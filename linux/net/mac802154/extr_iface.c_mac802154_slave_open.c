
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ieee802154_sub_if_data {int state; struct ieee802154_local* local; } ;
struct ieee802154_local {int open_count; } ;


 int ASSERT_RTNL () ;
 struct ieee802154_sub_if_data* IEEE802154_DEV_TO_SUB_IF (struct net_device*) ;
 int SDATA_STATE_RUNNING ;
 int clear_bit (int ,int *) ;
 int drv_start (struct ieee802154_local*) ;
 int ieee802154_setup_hw (struct ieee802154_sub_if_data*) ;
 int netif_start_queue (struct net_device*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int mac802154_slave_open(struct net_device *dev)
{
 struct ieee802154_sub_if_data *sdata = IEEE802154_DEV_TO_SUB_IF(dev);
 struct ieee802154_local *local = sdata->local;
 int res;

 ASSERT_RTNL();

 set_bit(SDATA_STATE_RUNNING, &sdata->state);

 if (!local->open_count) {
  res = ieee802154_setup_hw(sdata);
  if (res)
   goto err;

  res = drv_start(local);
  if (res)
   goto err;
 }

 local->open_count++;
 netif_start_queue(dev);
 return 0;
err:

 clear_bit(SDATA_STATE_RUNNING, &sdata->state);

 return res;
}
