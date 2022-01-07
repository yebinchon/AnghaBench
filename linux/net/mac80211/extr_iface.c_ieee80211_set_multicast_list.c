
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; int addr_len; int mc; } ;
struct ieee80211_sub_if_data {int flags; struct ieee80211_local* local; } ;
struct ieee80211_local {int reconfig_filter; int hw; int filter_lock; int mc_list; int iff_allmultis; } ;


 struct ieee80211_sub_if_data* IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 int IEEE80211_SDATA_ALLMULTI ;
 int IFF_ALLMULTI ;
 int __hw_addr_sync (int *,int *,int ) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int ieee80211_queue_work (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ieee80211_set_multicast_list(struct net_device *dev)
{
 struct ieee80211_sub_if_data *sdata = IEEE80211_DEV_TO_SUB_IF(dev);
 struct ieee80211_local *local = sdata->local;
 int allmulti, sdata_allmulti;

 allmulti = !!(dev->flags & IFF_ALLMULTI);
 sdata_allmulti = !!(sdata->flags & IEEE80211_SDATA_ALLMULTI);

 if (allmulti != sdata_allmulti) {
  if (dev->flags & IFF_ALLMULTI)
   atomic_inc(&local->iff_allmultis);
  else
   atomic_dec(&local->iff_allmultis);
  sdata->flags ^= IEEE80211_SDATA_ALLMULTI;
 }

 spin_lock_bh(&local->filter_lock);
 __hw_addr_sync(&local->mc_list, &dev->mc, dev->addr_len);
 spin_unlock_bh(&local->filter_lock);
 ieee80211_queue_work(&local->hw, &local->reconfig_filter);
}
