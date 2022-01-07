
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_if_ibss {int csa_connection_drop_work; } ;
struct TYPE_2__ {struct ieee80211_if_ibss ibss; } ;
struct ieee80211_sub_if_data {TYPE_1__ u; } ;


 int cancel_work_sync (int *) ;

void ieee80211_ibss_stop(struct ieee80211_sub_if_data *sdata)
{
 struct ieee80211_if_ibss *ifibss = &sdata->u.ibss;

 cancel_work_sync(&ifibss->csa_connection_drop_work);
}
