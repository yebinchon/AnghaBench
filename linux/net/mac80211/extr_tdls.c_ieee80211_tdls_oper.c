
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct wiphy {int flags; } ;
struct sta_info {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int request_smps_work; int tdls_peer; int tdls_peer_del_work; } ;
struct TYPE_6__ {TYPE_2__ mgd; } ;
struct TYPE_4__ {scalar_t__ type; int csa_active; } ;
struct ieee80211_sub_if_data {TYPE_3__ u; struct ieee80211_local* local; TYPE_1__ vif; } ;
struct ieee80211_local {int mtx; int hw; int sta_mtx; int tx_pending_tasklet; } ;
typedef enum nl80211_tdls_operation { ____Placeholder_nl80211_tdls_operation } nl80211_tdls_operation ;


 int EBUSY ;
 int EINVAL ;
 int ENOLINK ;
 int ENOTSUPP ;
 struct ieee80211_sub_if_data* IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 scalar_t__ NL80211_IFTYPE_STATION ;





 int WARN_ON_ONCE (int) ;
 int WIPHY_FLAG_SUPPORTS_TDLS ;
 int WLAN_STA_TDLS_PEER_AUTH ;
 int cancel_delayed_work (int *) ;
 int eth_zero_addr (int ) ;
 scalar_t__ ether_addr_equal (int ,int const*) ;
 int iee80211_tdls_recalc_chanctx (struct ieee80211_sub_if_data*,struct sta_info*) ;
 int iee80211_tdls_recalc_ht_protection (struct ieee80211_sub_if_data*,struct sta_info*) ;
 int ieee80211_flush_queues (struct ieee80211_local*,struct ieee80211_sub_if_data*,int) ;
 int ieee80211_queue_work (int *,int *) ;
 int is_zero_ether_addr (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sdata_lock (struct ieee80211_sub_if_data*) ;
 int sdata_unlock (struct ieee80211_sub_if_data*) ;
 int set_sta_flag (struct sta_info*,int ) ;
 int sta_info_destroy_addr (struct ieee80211_sub_if_data*,int const*) ;
 struct sta_info* sta_info_get (struct ieee80211_sub_if_data*,int const*) ;
 int tasklet_kill (int *) ;
 int tdls_dbg (struct ieee80211_sub_if_data*,char*,...) ;

int ieee80211_tdls_oper(struct wiphy *wiphy, struct net_device *dev,
   const u8 *peer, enum nl80211_tdls_operation oper)
{
 struct sta_info *sta;
 struct ieee80211_sub_if_data *sdata = IEEE80211_DEV_TO_SUB_IF(dev);
 struct ieee80211_local *local = sdata->local;
 int ret;

 if (!(wiphy->flags & WIPHY_FLAG_SUPPORTS_TDLS))
  return -ENOTSUPP;

 if (sdata->vif.type != NL80211_IFTYPE_STATION)
  return -EINVAL;

 switch (oper) {
 case 130:
 case 132:
  break;
 case 128:
 case 129:
 case 131:

  return -ENOTSUPP;
 }




 sdata_lock(sdata);
 mutex_lock(&local->mtx);
 tdls_dbg(sdata, "TDLS oper %d peer %pM\n", oper, peer);

 switch (oper) {
 case 130:
  if (sdata->vif.csa_active) {
   tdls_dbg(sdata, "TDLS: disallow link during CSA\n");
   ret = -EBUSY;
   break;
  }

  mutex_lock(&local->sta_mtx);
  sta = sta_info_get(sdata, peer);
  if (!sta) {
   mutex_unlock(&local->sta_mtx);
   ret = -ENOLINK;
   break;
  }

  iee80211_tdls_recalc_chanctx(sdata, sta);
  iee80211_tdls_recalc_ht_protection(sdata, sta);

  set_sta_flag(sta, WLAN_STA_TDLS_PEER_AUTH);
  mutex_unlock(&local->sta_mtx);

  WARN_ON_ONCE(is_zero_ether_addr(sdata->u.mgd.tdls_peer) ||
        !ether_addr_equal(sdata->u.mgd.tdls_peer, peer));
  ret = 0;
  break;
 case 132:
  tasklet_kill(&local->tx_pending_tasklet);

  ieee80211_flush_queues(local, sdata, 0);

  ret = sta_info_destroy_addr(sdata, peer);

  mutex_lock(&local->sta_mtx);
  iee80211_tdls_recalc_ht_protection(sdata, ((void*)0));
  mutex_unlock(&local->sta_mtx);

  iee80211_tdls_recalc_chanctx(sdata, ((void*)0));
  break;
 default:
  ret = -ENOTSUPP;
  break;
 }

 if (ret == 0 && ether_addr_equal(sdata->u.mgd.tdls_peer, peer)) {
  cancel_delayed_work(&sdata->u.mgd.tdls_peer_del_work);
  eth_zero_addr(sdata->u.mgd.tdls_peer);
 }

 if (ret == 0)
  ieee80211_queue_work(&sdata->local->hw,
         &sdata->u.mgd.request_smps_work);

 mutex_unlock(&local->mtx);
 sdata_unlock(sdata);
 return ret;
}
