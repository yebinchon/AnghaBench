
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sub_if_data {int crypto_tx_tailroom_needed_cnt; int local; } ;


 int assert_key_lock (int ) ;
 int synchronize_net () ;
 int update_vlan_tailroom_need_count (struct ieee80211_sub_if_data*,int) ;

__attribute__((used)) static void increment_tailroom_need_count(struct ieee80211_sub_if_data *sdata)
{
 assert_key_lock(sdata->local);

 update_vlan_tailroom_need_count(sdata, 1);

 if (!sdata->crypto_tx_tailroom_needed_cnt++) {




  synchronize_net();
 }
}
