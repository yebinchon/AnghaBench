
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int __iterate_stations (struct ieee80211_local*,void (*) (void*,struct ieee80211_sta*),void*) ;
 struct ieee80211_local* hw_to_local (struct ieee80211_hw*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

void ieee80211_iterate_stations_atomic(struct ieee80211_hw *hw,
   void (*iterator)(void *data,
      struct ieee80211_sta *sta),
   void *data)
{
 struct ieee80211_local *local = hw_to_local(hw);

 rcu_read_lock();
 __iterate_stations(local, iterator, data);
 rcu_read_unlock();
}
