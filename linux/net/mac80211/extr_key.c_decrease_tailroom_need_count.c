
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sub_if_data {int crypto_tx_tailroom_needed_cnt; int local; } ;


 int WARN_ON_ONCE (int) ;
 int assert_key_lock (int ) ;
 int update_vlan_tailroom_need_count (struct ieee80211_sub_if_data*,int) ;

__attribute__((used)) static void decrease_tailroom_need_count(struct ieee80211_sub_if_data *sdata,
      int delta)
{
 assert_key_lock(sdata->local);

 WARN_ON_ONCE(sdata->crypto_tx_tailroom_needed_cnt < delta);

 update_vlan_tailroom_need_count(sdata, -delta);
 sdata->crypto_tx_tailroom_needed_cnt -= delta;
}
