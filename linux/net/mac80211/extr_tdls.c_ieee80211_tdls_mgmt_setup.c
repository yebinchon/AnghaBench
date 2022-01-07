
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int driver_smps_mode; int tdls_peer_del_work; int tdls_peer; } ;
struct TYPE_4__ {TYPE_1__ mgd; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; struct ieee80211_local* local; } ;
struct ieee80211_local {int mtx; int hw; } ;
typedef enum ieee80211_smps_mode { ____Placeholder_ieee80211_smps_mode } ieee80211_smps_mode ;


 int EBUSY ;
 int ENOLINK ;
 int ENOTSUPP ;
 int ETH_ALEN ;
 struct ieee80211_sub_if_data* IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 int IEEE80211_SMPS_AUTOMATIC ;
 int IEEE80211_SMPS_OFF ;
 int TDLS_PEER_SETUP_TIMEOUT ;
 int eth_zero_addr (int ) ;
 int ether_addr_equal (int ,int const*) ;
 int ieee80211_flush_queues (struct ieee80211_local*,struct ieee80211_sub_if_data*,int) ;
 int ieee80211_queue_delayed_work (int *,int *,int ) ;
 int ieee80211_tdls_prep_mgmt_packet (struct wiphy*,struct net_device*,int const*,int ,int ,scalar_t__,int ,int,int const*,size_t,int ,int *) ;
 int is_zero_ether_addr (int ) ;
 int memcpy (int ,int const*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sta_info_get (struct ieee80211_sub_if_data*,int const*) ;
 int tdls_dbg (struct ieee80211_sub_if_data*,char*,int) ;

__attribute__((used)) static int
ieee80211_tdls_mgmt_setup(struct wiphy *wiphy, struct net_device *dev,
     const u8 *peer, u8 action_code, u8 dialog_token,
     u16 status_code, u32 peer_capability, bool initiator,
     const u8 *extra_ies, size_t extra_ies_len)
{
 struct ieee80211_sub_if_data *sdata = IEEE80211_DEV_TO_SUB_IF(dev);
 struct ieee80211_local *local = sdata->local;
 enum ieee80211_smps_mode smps_mode = sdata->u.mgd.driver_smps_mode;
 int ret;


 if (smps_mode != IEEE80211_SMPS_AUTOMATIC &&
     smps_mode != IEEE80211_SMPS_OFF) {
  tdls_dbg(sdata, "Aborting TDLS setup due to SMPS mode %d\n",
    smps_mode);
  return -ENOTSUPP;
 }

 mutex_lock(&local->mtx);


 if (!is_zero_ether_addr(sdata->u.mgd.tdls_peer) &&
     !ether_addr_equal(sdata->u.mgd.tdls_peer, peer)) {
  ret = -EBUSY;
  goto out_unlock;
 }
 if (status_code == 0) {
  rcu_read_lock();
  if (!sta_info_get(sdata, peer)) {
   rcu_read_unlock();
   ret = -ENOLINK;
   goto out_unlock;
  }
  rcu_read_unlock();
 }

 ieee80211_flush_queues(local, sdata, 0);
 memcpy(sdata->u.mgd.tdls_peer, peer, ETH_ALEN);
 mutex_unlock(&local->mtx);


 ret = ieee80211_tdls_prep_mgmt_packet(wiphy, dev, peer, action_code,
           dialog_token, status_code,
           peer_capability, initiator,
           extra_ies, extra_ies_len, 0,
           ((void*)0));
 if (ret < 0) {
  mutex_lock(&local->mtx);
  eth_zero_addr(sdata->u.mgd.tdls_peer);
  mutex_unlock(&local->mtx);
  return ret;
 }

 ieee80211_queue_delayed_work(&sdata->local->hw,
         &sdata->u.mgd.tdls_peer_del_work,
         TDLS_PEER_SETUP_TIMEOUT);
 return 0;

out_unlock:
 mutex_unlock(&local->mtx);
 return ret;
}
