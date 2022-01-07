
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int addr; } ;
struct sta_info {int addr; TYPE_3__ sta; struct ieee80211_sub_if_data* sdata; } ;
struct TYPE_4__ {int addr; } ;
struct ieee80211_sub_if_data {TYPE_2__* local; TYPE_1__ vif; } ;
struct TYPE_5__ {int hw; int sta_mtx; } ;


 int EINVAL ;
 int ENETDOWN ;
 int ENOTUNIQ ;
 int NEEDS_UNIQUE_STA_ADDR ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ ether_addr_equal (int ,int ) ;
 scalar_t__ ieee80211_find_sta_by_ifaddr (int *,int ,int *) ;
 scalar_t__ ieee80211_hw_check (int *,int ) ;
 int ieee80211_sdata_running (struct ieee80211_sub_if_data*) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 int lockdep_assert_held (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int sta_info_insert_check(struct sta_info *sta)
{
 struct ieee80211_sub_if_data *sdata = sta->sdata;






 if (unlikely(!ieee80211_sdata_running(sdata)))
  return -ENETDOWN;

 if (WARN_ON(ether_addr_equal(sta->sta.addr, sdata->vif.addr) ||
      is_multicast_ether_addr(sta->sta.addr)))
  return -EINVAL;





 rcu_read_lock();
 lockdep_assert_held(&sdata->local->sta_mtx);
 if (ieee80211_hw_check(&sdata->local->hw, NEEDS_UNIQUE_STA_ADDR) &&
     ieee80211_find_sta_by_ifaddr(&sdata->local->hw, sta->addr, ((void*)0))) {
  rcu_read_unlock();
  return -ENOTUNIQ;
 }
 rcu_read_unlock();

 return 0;
}
