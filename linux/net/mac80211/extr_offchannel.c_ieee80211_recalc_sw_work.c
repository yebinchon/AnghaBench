
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {int roc_work; int workqueue; } ;


 long LONG_MAX ;
 long ieee80211_end_finished_rocs (struct ieee80211_local*,unsigned long) ;
 int mod_delayed_work (int ,int *,long) ;

__attribute__((used)) static bool ieee80211_recalc_sw_work(struct ieee80211_local *local,
         unsigned long now)
{
 long dur = ieee80211_end_finished_rocs(local, now);

 if (dur == LONG_MAX)
  return 0;

 mod_delayed_work(local->workqueue, &local->roc_work, dur);
 return 1;
}
