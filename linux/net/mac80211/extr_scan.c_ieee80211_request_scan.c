
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_sub_if_data {TYPE_1__* local; } ;
struct cfg80211_scan_request {int dummy; } ;
struct TYPE_2__ {int mtx; } ;


 int __ieee80211_start_scan (struct ieee80211_sub_if_data*,struct cfg80211_scan_request*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ieee80211_request_scan(struct ieee80211_sub_if_data *sdata,
      struct cfg80211_scan_request *req)
{
 int res;

 mutex_lock(&sdata->local->mtx);
 res = __ieee80211_start_scan(sdata, req);
 mutex_unlock(&sdata->local->mtx);

 return res;
}
