
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct ieee80211_local {int sta_mtx; } ;


 int __ieee80211_check_fast_rx_iface (struct ieee80211_sub_if_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void ieee80211_check_fast_rx_iface(struct ieee80211_sub_if_data *sdata)
{
 struct ieee80211_local *local = sdata->local;

 mutex_lock(&local->sta_mtx);
 __ieee80211_check_fast_rx_iface(sdata);
 mutex_unlock(&local->sta_mtx);
}
