
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_sub_if_data {TYPE_1__* local; scalar_t__ dev; } ;
struct TYPE_2__ {int chanctx_mtx; int mtx; } ;


 int WARN_ON (int) ;
 int __ieee80211_vif_release_channel (struct ieee80211_sub_if_data*) ;
 int lockdep_assert_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ netif_carrier_ok (scalar_t__) ;

void ieee80211_vif_release_channel(struct ieee80211_sub_if_data *sdata)
{
 WARN_ON(sdata->dev && netif_carrier_ok(sdata->dev));

 lockdep_assert_held(&sdata->local->mtx);

 mutex_lock(&sdata->local->chanctx_mtx);
 __ieee80211_vif_release_channel(sdata);
 mutex_unlock(&sdata->local->chanctx_mtx);
}
