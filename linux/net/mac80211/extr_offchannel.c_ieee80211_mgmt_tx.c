
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_9__ ;
typedef struct TYPE_30__ TYPE_8__ ;
typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_16__ ;
typedef struct TYPE_21__ TYPE_14__ ;
typedef struct TYPE_20__ TYPE_13__ ;
typedef struct TYPE_19__ TYPE_12__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct sta_info {int dummy; } ;
struct sk_buff {int dev; } ;
struct TYPE_18__ {int beacon; int mesh_id_len; } ;
struct TYPE_17__ {int presp; } ;
struct TYPE_31__ {int beacon; } ;
struct TYPE_29__ {TYPE_6__* associated; } ;
struct TYPE_19__ {TYPE_11__ mesh; TYPE_10__ ibss; TYPE_9__ ap; TYPE_7__ mgd; } ;
struct TYPE_23__ {int ibss_joined; } ;
struct TYPE_20__ {int type; scalar_t__ csa_active; int chanctx_conf; TYPE_1__ bss_conf; } ;
struct ieee80211_sub_if_data {int dev; TYPE_12__ u; TYPE_13__ vif; TYPE_2__* bss; struct ieee80211_local* local; } ;
struct TYPE_25__ {int category; } ;
struct TYPE_26__ {TYPE_3__ action; } ;
struct ieee80211_mgmt {int bssid; int da; TYPE_4__ u; int frame_control; } ;
struct TYPE_21__ {int offchannel_tx_hw_queue; scalar_t__ extra_tx_headroom; } ;
struct ieee80211_local {int mtx; TYPE_14__ hw; TYPE_5__* ops; } ;
struct TYPE_30__ {scalar_t__ chan; } ;
struct ieee80211_chanctx_conf {TYPE_8__ def; } ;
struct cfg80211_mgmt_tx_params {scalar_t__ chan; int n_csa_offsets; size_t* csa_offsets; int wait; scalar_t__ dont_wait_for_ack; scalar_t__ len; scalar_t__ buf; scalar_t__ offchan; scalar_t__ no_cck; } ;
struct beacon_data {int csa_current_counter; } ;
struct TYPE_28__ {int bssid; } ;
struct TYPE_27__ {int remain_on_channel; } ;
struct TYPE_24__ {int beacon; } ;
struct TYPE_22__ {int flags; int hw_queue; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOLINK ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int IEEE80211_ROC_TYPE_MGMT_TX ;
 TYPE_16__* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_NO_ACK ;
 int IEEE80211_TX_CTL_NO_CCK_RATE ;
 int IEEE80211_TX_CTL_REQ_TX_STATUS ;
 int IEEE80211_TX_CTL_TX_OFFCHAN ;
 int IEEE80211_TX_INTFL_NL80211_FRAME_TX ;
 int IEEE80211_TX_INTFL_OFFCHAN_TX_OK ;
 struct ieee80211_sub_if_data* IEEE80211_WDEV_TO_SUB_IF (struct wireless_dev*) ;
 int QUEUE_CONTROL ;
 int WLAN_CATEGORY_PUBLIC ;
 int WLAN_CATEGORY_SELF_PROTECTED ;
 int WLAN_CATEGORY_SPECTRUM_MGMT ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int ieee80211_attach_ack_skb (struct ieee80211_local*,struct sk_buff*,int*,int ) ;
 int ieee80211_free_txskb (TYPE_14__*,struct sk_buff*) ;
 scalar_t__ ieee80211_hw_check (TYPE_14__*,int ) ;
 int ieee80211_is_action (int ) ;
 int ieee80211_start_roc_work (struct ieee80211_local*,struct ieee80211_sub_if_data*,scalar_t__,int ,int*,struct sk_buff*,int ) ;
 int ieee80211_tx_skb (struct ieee80211_sub_if_data*,struct sk_buff*) ;
 scalar_t__ ieee80211_vif_is_mesh (TYPE_13__*) ;
 int kfree_skb (struct sk_buff*) ;
 int memcmp (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu_access_pointer (int ) ;
 void* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sdata_lock (struct ieee80211_sub_if_data*) ;
 int sdata_unlock (struct ieee80211_sub_if_data*) ;
 int * skb_put_data (struct sk_buff*,scalar_t__,scalar_t__) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 struct sta_info* sta_info_get_bss (struct ieee80211_sub_if_data*,int ) ;

int ieee80211_mgmt_tx(struct wiphy *wiphy, struct wireless_dev *wdev,
        struct cfg80211_mgmt_tx_params *params, u64 *cookie)
{
 struct ieee80211_sub_if_data *sdata = IEEE80211_WDEV_TO_SUB_IF(wdev);
 struct ieee80211_local *local = sdata->local;
 struct sk_buff *skb;
 struct sta_info *sta;
 const struct ieee80211_mgmt *mgmt = (void *)params->buf;
 bool need_offchan = 0;
 u32 flags;
 int ret;
 u8 *data;

 if (params->dont_wait_for_ack)
  flags = IEEE80211_TX_CTL_NO_ACK;
 else
  flags = IEEE80211_TX_INTFL_NL80211_FRAME_TX |
   IEEE80211_TX_CTL_REQ_TX_STATUS;

 if (params->no_cck)
  flags |= IEEE80211_TX_CTL_NO_CCK_RATE;

 switch (sdata->vif.type) {
 case 136:
  if (!sdata->vif.bss_conf.ibss_joined)
   need_offchan = 1;
 case 135:
 case 134:
 case 129:
  if (sdata->vif.type != 136 &&
      !ieee80211_vif_is_mesh(&sdata->vif) &&
      !rcu_access_pointer(sdata->bss->beacon))
   need_offchan = 1;
  if (!ieee80211_is_action(mgmt->frame_control) ||
      mgmt->u.action.category == WLAN_CATEGORY_PUBLIC ||
      mgmt->u.action.category == WLAN_CATEGORY_SELF_PROTECTED ||
      mgmt->u.action.category == WLAN_CATEGORY_SPECTRUM_MGMT)
   break;
  rcu_read_lock();
  sta = sta_info_get_bss(sdata, mgmt->da);
  rcu_read_unlock();
  if (!sta)
   return -ENOLINK;
  break;
 case 128:
 case 131:
  sdata_lock(sdata);
  if (!sdata->u.mgd.associated ||
      (params->offchan && params->wait &&
       local->ops->remain_on_channel &&
       memcmp(sdata->u.mgd.associated->bssid,
       mgmt->bssid, ETH_ALEN)))
   need_offchan = 1;
  sdata_unlock(sdata);
  break;
 case 130:
  need_offchan = 1;
  break;
 case 132:
 default:
  return -EOPNOTSUPP;
 }




 if (need_offchan && !params->chan)
  return -EINVAL;

 mutex_lock(&local->mtx);


 if (!need_offchan) {
  struct ieee80211_chanctx_conf *chanctx_conf;

  rcu_read_lock();
  chanctx_conf = rcu_dereference(sdata->vif.chanctx_conf);

  if (chanctx_conf) {
   need_offchan = params->chan &&
           (params->chan !=
     chanctx_conf->def.chan);
  } else if (!params->chan) {
   ret = -EINVAL;
   rcu_read_unlock();
   goto out_unlock;
  } else {
   need_offchan = 1;
  }
  rcu_read_unlock();
 }

 if (need_offchan && !params->offchan) {
  ret = -EBUSY;
  goto out_unlock;
 }

 skb = dev_alloc_skb(local->hw.extra_tx_headroom + params->len);
 if (!skb) {
  ret = -ENOMEM;
  goto out_unlock;
 }
 skb_reserve(skb, local->hw.extra_tx_headroom);

 data = skb_put_data(skb, params->buf, params->len);


 if (sdata->vif.csa_active &&
     (sdata->vif.type == 135 ||
      sdata->vif.type == 133 ||
      sdata->vif.type == 136) &&
     params->n_csa_offsets) {
  int i;
  struct beacon_data *beacon = ((void*)0);

  rcu_read_lock();

  if (sdata->vif.type == 135)
   beacon = rcu_dereference(sdata->u.ap.beacon);
  else if (sdata->vif.type == 136)
   beacon = rcu_dereference(sdata->u.ibss.presp);
  else if (ieee80211_vif_is_mesh(&sdata->vif))
   beacon = rcu_dereference(sdata->u.mesh.beacon);

  if (beacon)
   for (i = 0; i < params->n_csa_offsets; i++)
    data[params->csa_offsets[i]] =
     beacon->csa_current_counter;

  rcu_read_unlock();
 }

 IEEE80211_SKB_CB(skb)->flags = flags;

 skb->dev = sdata->dev;

 if (!params->dont_wait_for_ack) {



  ret = ieee80211_attach_ack_skb(local, skb, cookie, GFP_KERNEL);
  if (ret) {
   kfree_skb(skb);
   goto out_unlock;
  }
 } else {





  *cookie = 0xffffffff;
 }

 if (!need_offchan) {
  ieee80211_tx_skb(sdata, skb);
  ret = 0;
  goto out_unlock;
 }

 IEEE80211_SKB_CB(skb)->flags |= IEEE80211_TX_CTL_TX_OFFCHAN |
     IEEE80211_TX_INTFL_OFFCHAN_TX_OK;
 if (ieee80211_hw_check(&local->hw, QUEUE_CONTROL))
  IEEE80211_SKB_CB(skb)->hw_queue =
   local->hw.offchannel_tx_hw_queue;


 ret = ieee80211_start_roc_work(local, sdata, params->chan,
           params->wait, cookie, skb,
           IEEE80211_ROC_TYPE_MGMT_TX);
 if (ret)
  ieee80211_free_txskb(&local->hw, skb);
 out_unlock:
 mutex_unlock(&local->mtx);
 return ret;
}
