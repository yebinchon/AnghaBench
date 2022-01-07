
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct ieee80211_local {int workqueue; } ;
struct ieee80211_hw {int dummy; } ;


 struct ieee80211_local* hw_to_local (struct ieee80211_hw*) ;
 int ieee80211_can_queue_work (struct ieee80211_local*) ;
 int queue_work (int ,struct work_struct*) ;

void ieee80211_queue_work(struct ieee80211_hw *hw, struct work_struct *work)
{
 struct ieee80211_local *local = hw_to_local(hw);

 if (!ieee80211_can_queue_work(local))
  return;

 queue_work(local->workqueue, work);
}
