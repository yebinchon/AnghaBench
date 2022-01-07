
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_local {int next_scan_state; int leave_oper_channel_time; TYPE_1__* ops; } ;
struct TYPE_2__ {scalar_t__ flush; } ;


 int HZ ;
 int SCAN_SET_CHANNEL ;
 int ieee80211_flush_queues (struct ieee80211_local*,int *,int) ;
 int ieee80211_offchannel_stop_vifs (struct ieee80211_local*) ;
 int jiffies ;

__attribute__((used)) static void ieee80211_scan_state_resume(struct ieee80211_local *local,
     unsigned long *next_delay)
{
 ieee80211_offchannel_stop_vifs(local);

 if (local->ops->flush) {
  ieee80211_flush_queues(local, ((void*)0), 0);
  *next_delay = 0;
 } else
  *next_delay = HZ / 10;


 local->leave_oper_channel_time = jiffies;


 local->next_scan_state = SCAN_SET_CHANNEL;
}
