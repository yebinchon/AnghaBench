
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct wiphy {int dummy; } ;
struct sta_info {int dummy; } ;
struct net_device {int dummy; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct ieee80211_local {int dummy; } ;


 struct ieee80211_sub_if_data* IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 int IEEE80211_QUEUE_STOP_REASON_TDLS_TEARDOWN ;
 int WLAN_STA_TDLS_PEER_AUTH ;
 int clear_sta_flag (struct sta_info*,int ) ;
 int ieee80211_flush_queues (struct ieee80211_local*,struct ieee80211_sub_if_data*,int) ;
 int ieee80211_stop_vif_queues (struct ieee80211_local*,struct ieee80211_sub_if_data*,int ) ;
 int ieee80211_tdls_prep_mgmt_packet (struct wiphy*,struct net_device*,int const*,int ,int ,int ,int ,int,int const*,size_t,int ,int *) ;
 int ieee80211_wake_vif_queues (struct ieee80211_local*,struct ieee80211_sub_if_data*,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sdata_err (struct ieee80211_sub_if_data*,char*,int) ;
 struct sta_info* sta_info_get (struct ieee80211_sub_if_data*,int const*) ;

__attribute__((used)) static int
ieee80211_tdls_mgmt_teardown(struct wiphy *wiphy, struct net_device *dev,
        const u8 *peer, u8 action_code, u8 dialog_token,
        u16 status_code, u32 peer_capability,
        bool initiator, const u8 *extra_ies,
        size_t extra_ies_len)
{
 struct ieee80211_sub_if_data *sdata = IEEE80211_DEV_TO_SUB_IF(dev);
 struct ieee80211_local *local = sdata->local;
 struct sta_info *sta;
 int ret;







 ieee80211_stop_vif_queues(local, sdata,
      IEEE80211_QUEUE_STOP_REASON_TDLS_TEARDOWN);
 ieee80211_flush_queues(local, sdata, 0);

 ret = ieee80211_tdls_prep_mgmt_packet(wiphy, dev, peer, action_code,
           dialog_token, status_code,
           peer_capability, initiator,
           extra_ies, extra_ies_len, 0,
           ((void*)0));
 if (ret < 0)
  sdata_err(sdata, "Failed sending TDLS teardown packet %d\n",
     ret);





 rcu_read_lock();
 sta = sta_info_get(sdata, peer);
 if (sta)
  clear_sta_flag(sta, WLAN_STA_TDLS_PEER_AUTH);
 rcu_read_unlock();

 ieee80211_wake_vif_queues(local, sdata,
      IEEE80211_QUEUE_STOP_REASON_TDLS_TEARDOWN);

 return 0;
}
