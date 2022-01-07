
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ieee80211_sub_if_data {int vif; } ;
struct ieee80211_sta {int tdls; } ;


 int GFP_ATOMIC ;
 int NL80211_TDLS_TEARDOWN ;
 int WLAN_REASON_TDLS_TEARDOWN_UNREACHABLE ;
 struct ieee80211_sta* ieee80211_find_sta (int *,int const*) ;
 int ieee80211_get_reason_code_string (int ) ;
 int ieee80211_tdls_oper_request (int *,int const*,int ,int ,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int tdls_dbg (struct ieee80211_sub_if_data*,char*,int const*,int ,int ) ;

void ieee80211_tdls_handle_disconnect(struct ieee80211_sub_if_data *sdata,
          const u8 *peer, u16 reason)
{
 struct ieee80211_sta *sta;

 rcu_read_lock();
 sta = ieee80211_find_sta(&sdata->vif, peer);
 if (!sta || !sta->tdls) {
  rcu_read_unlock();
  return;
 }
 rcu_read_unlock();

 tdls_dbg(sdata, "disconnected from TDLS peer %pM (Reason: %u=%s)\n",
   peer, reason,
   ieee80211_get_reason_code_string(reason));

 ieee80211_tdls_oper_request(&sdata->vif, peer,
        NL80211_TDLS_TEARDOWN,
        WLAN_REASON_TDLS_TEARDOWN_UNREACHABLE,
        GFP_ATOMIC);
}
