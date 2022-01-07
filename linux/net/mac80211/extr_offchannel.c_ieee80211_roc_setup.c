
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {int roc_list; int roc_work; int hw_roc_done; int hw_roc_start; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int ieee80211_hw_roc_done ;
 int ieee80211_hw_roc_start ;
 int ieee80211_roc_work ;

void ieee80211_roc_setup(struct ieee80211_local *local)
{
 INIT_WORK(&local->hw_roc_start, ieee80211_hw_roc_start);
 INIT_WORK(&local->hw_roc_done, ieee80211_hw_roc_done);
 INIT_DELAYED_WORK(&local->roc_work, ieee80211_roc_work);
 INIT_LIST_HEAD(&local->roc_list);
}
