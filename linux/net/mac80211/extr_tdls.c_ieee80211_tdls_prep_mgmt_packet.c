
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int const u8 ;
typedef int u32 ;
typedef int u16 ;
struct wiphy {int dummy; } ;
struct TYPE_5__ {int tdls_initiator; } ;
struct sta_info {TYPE_1__ sta; } ;
struct sk_buff {int priority; } ;
struct net_device {int dummy; } ;
struct TYPE_7__ {int teardown_lock; struct sk_buff* orig_teardown_skb; int teardown_skb; } ;
struct TYPE_8__ {TYPE_3__ mgd; } ;
struct ieee80211_sub_if_data {TYPE_4__ u; TYPE_2__* local; } ;
struct cfg80211_chan_def {int dummy; } ;
struct TYPE_6__ {int hw; } ;


 int EINVAL ;
 int ENOTSUPP ;
 int GFP_ATOMIC ;
 struct ieee80211_sub_if_data* IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 int IEEE80211_TX_CTL_REQ_TX_STATUS ;
 int IEEE80211_TX_INTFL_MLME_CONN_TX ;
 int REPORTS_TX_ACK_STATUS ;

 int WLAN_STA_TDLS_INITIATOR ;
 int WLAN_STA_TDLS_PEER_AUTH ;







 int __ieee80211_subif_start_xmit (struct sk_buff*,struct net_device*,int,int ) ;
 int clear_sta_flag (struct sta_info*,int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 scalar_t__ ieee80211_hw_check (int *,int ) ;
 int ieee80211_select_queue (struct ieee80211_sub_if_data*,struct sk_buff*) ;
 struct sk_buff* ieee80211_tdls_build_mgmt_packet_data (struct ieee80211_sub_if_data*,int const*,int const,int const,int ,int,int const*,size_t,int const,struct cfg80211_chan_def*) ;
 int ieee80211_tx_skb (struct ieee80211_sub_if_data*,struct sk_buff*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int set_sta_flag (struct sta_info*,int ) ;
 int skb_copy (struct sk_buff*,int ) ;
 int skb_set_queue_mapping (struct sk_buff*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct sta_info* sta_info_get (struct ieee80211_sub_if_data*,int const*) ;
 scalar_t__ test_sta_flag (struct sta_info*,int ) ;

__attribute__((used)) static int
ieee80211_tdls_prep_mgmt_packet(struct wiphy *wiphy, struct net_device *dev,
    const u8 *peer, u8 action_code, u8 dialog_token,
    u16 status_code, u32 peer_capability,
    bool initiator, const u8 *extra_ies,
    size_t extra_ies_len, u8 oper_class,
    struct cfg80211_chan_def *chandef)
{
 struct ieee80211_sub_if_data *sdata = IEEE80211_DEV_TO_SUB_IF(dev);
 struct sk_buff *skb = ((void*)0);
 struct sta_info *sta;
 u32 flags = 0;
 int ret = 0;

 rcu_read_lock();
 sta = sta_info_get(sdata, peer);


 switch (action_code) {
 case 130:
  if (sta) {
   set_sta_flag(sta, WLAN_STA_TDLS_INITIATOR);
   sta->sta.tdls_initiator = 0;
  }

 case 131:
 case 132:
  initiator = 1;
  break;
 case 129:





  if (sta) {
   clear_sta_flag(sta, WLAN_STA_TDLS_INITIATOR);
   sta->sta.tdls_initiator = 1;
  }

 case 135:
  initiator = 0;
  break;
 case 128:
 case 134:
 case 133:

  break;
 default:
  ret = -ENOTSUPP;
  break;
 }

 if (sta && test_sta_flag(sta, WLAN_STA_TDLS_INITIATOR))
  initiator = 1;

 rcu_read_unlock();
 if (ret < 0)
  goto fail;

 skb = ieee80211_tdls_build_mgmt_packet_data(sdata, peer, action_code,
          dialog_token, status_code,
          initiator, extra_ies,
          extra_ies_len, oper_class,
          chandef);
 if (!skb) {
  ret = -EINVAL;
  goto fail;
 }

 if (action_code == 135) {
  ieee80211_tx_skb(sdata, skb);
  return 0;
 }





 switch (action_code) {
 case 130:
 case 129:
  skb->priority = 256 + 2;
  break;
 default:
  skb->priority = 256 + 5;
  break;
 }
 skb_set_queue_mapping(skb, ieee80211_select_queue(sdata, skb));






 if ((action_code == 128) &&
     ieee80211_hw_check(&sdata->local->hw, REPORTS_TX_ACK_STATUS)) {
  bool try_resend;


  rcu_read_lock();
  sta = sta_info_get(sdata, peer);
  try_resend = sta && test_sta_flag(sta, WLAN_STA_TDLS_PEER_AUTH);
  rcu_read_unlock();

  spin_lock_bh(&sdata->u.mgd.teardown_lock);
  if (try_resend && !sdata->u.mgd.teardown_skb) {

   flags |= IEEE80211_TX_CTL_REQ_TX_STATUS |
     IEEE80211_TX_INTFL_MLME_CONN_TX;
   sdata->u.mgd.teardown_skb = skb_copy(skb, GFP_ATOMIC);
   sdata->u.mgd.orig_teardown_skb = skb;
  }
  spin_unlock_bh(&sdata->u.mgd.teardown_lock);
 }


 local_bh_disable();
 __ieee80211_subif_start_xmit(skb, dev, flags, 0);
 local_bh_enable();

 return ret;

fail:
 dev_kfree_skb(skb);
 return ret;
}
