
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {int radar_detected_work; } ;
struct ieee80211_hw {int dummy; } ;


 struct ieee80211_local* hw_to_local (struct ieee80211_hw*) ;
 int schedule_work (int *) ;
 int trace_api_radar_detected (struct ieee80211_local*) ;

void ieee80211_radar_detected(struct ieee80211_hw *hw)
{
 struct ieee80211_local *local = hw_to_local(hw);

 trace_api_radar_detected(local);

 schedule_work(&local->radar_detected_work);
}
