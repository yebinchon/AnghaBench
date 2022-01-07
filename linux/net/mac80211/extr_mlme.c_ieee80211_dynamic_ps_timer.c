
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct ieee80211_local {int dynamic_ps_enable_work; int hw; } ;


 int dynamic_ps_timer ;
 struct ieee80211_local* from_timer (int ,struct timer_list*,int ) ;
 int ieee80211_queue_work (int *,int *) ;
 struct ieee80211_local* local ;

void ieee80211_dynamic_ps_timer(struct timer_list *t)
{
 struct ieee80211_local *local = from_timer(local, t, dynamic_ps_timer);

 ieee80211_queue_work(&local->hw, &local->dynamic_ps_enable_work);
}
