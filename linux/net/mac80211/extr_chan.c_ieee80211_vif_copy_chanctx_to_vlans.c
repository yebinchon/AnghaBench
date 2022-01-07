
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct ieee80211_local {int chanctx_mtx; } ;


 int __ieee80211_vif_copy_chanctx_to_vlans (struct ieee80211_sub_if_data*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void ieee80211_vif_copy_chanctx_to_vlans(struct ieee80211_sub_if_data *sdata,
      bool clear)
{
 struct ieee80211_local *local = sdata->local;

 mutex_lock(&local->chanctx_mtx);

 __ieee80211_vif_copy_chanctx_to_vlans(sdata, clear);

 mutex_unlock(&local->chanctx_mtx);
}
