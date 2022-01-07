
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {int hw_roc_start; int hw_roc_start_time; } ;
struct ieee80211_hw {int dummy; } ;


 struct ieee80211_local* hw_to_local (struct ieee80211_hw*) ;
 int ieee80211_queue_work (struct ieee80211_hw*,int *) ;
 int jiffies ;
 int trace_api_ready_on_channel (struct ieee80211_local*) ;

void ieee80211_ready_on_channel(struct ieee80211_hw *hw)
{
 struct ieee80211_local *local = hw_to_local(hw);

 local->hw_roc_start_time = jiffies;

 trace_api_ready_on_channel(local);

 ieee80211_queue_work(hw, &local->hw_roc_start);
}
