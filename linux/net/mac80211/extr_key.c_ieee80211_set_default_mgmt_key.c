
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_sub_if_data {TYPE_1__* local; } ;
struct TYPE_2__ {int key_mtx; } ;


 int __ieee80211_set_default_mgmt_key (struct ieee80211_sub_if_data*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void ieee80211_set_default_mgmt_key(struct ieee80211_sub_if_data *sdata,
        int idx)
{
 mutex_lock(&sdata->local->key_mtx);
 __ieee80211_set_default_mgmt_key(sdata, idx);
 mutex_unlock(&sdata->local->key_mtx);
}
