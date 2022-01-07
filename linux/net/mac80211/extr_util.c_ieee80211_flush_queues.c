
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sub_if_data {int dummy; } ;
struct ieee80211_local {int dummy; } ;


 int __ieee80211_flush_queues (struct ieee80211_local*,struct ieee80211_sub_if_data*,int ,int) ;

void ieee80211_flush_queues(struct ieee80211_local *local,
       struct ieee80211_sub_if_data *sdata, bool drop)
{
 __ieee80211_flush_queues(local, sdata, 0, drop);
}
