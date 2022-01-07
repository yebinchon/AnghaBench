
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {int scan_work; int hw; int scanning; } ;


 int SCAN_ABORTED ;
 int SCAN_COMPLETED ;
 int flush_delayed_work (int *) ;
 int ieee80211_queue_delayed_work (int *,int *,int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ieee80211_flush_completed_scan(struct ieee80211_local *local,
        bool aborted)
{







 if (test_bit(SCAN_COMPLETED, &local->scanning)) {





  if (aborted)
   set_bit(SCAN_ABORTED, &local->scanning);
  ieee80211_queue_delayed_work(&local->hw, &local->scan_work, 0);
  flush_delayed_work(&local->scan_work);
 }
}
