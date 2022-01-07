
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct ieee80211_vht_operation {int dummy; } ;
struct ieee80211_vht_cap {int dummy; } ;
struct ieee80211_tdls_lnkie {int dummy; } ;
struct ieee80211_tdls_data {int dummy; } ;
struct ieee80211_sub_if_data {int dev; struct ieee80211_local* local; } ;
struct ieee80211_mgmt {int dummy; } ;
struct TYPE_2__ {int wiphy; scalar_t__ extra_tx_headroom; } ;
struct ieee80211_local {TYPE_1__ hw; } ;
struct ieee80211_ht_operation {int dummy; } ;
struct ieee80211_ht_cap {int dummy; } ;
struct cfg80211_chan_def {int dummy; } ;


 int ENOTSUPP ;
 int dev_kfree_skb (struct sk_buff*) ;
 int ieee80211_prep_tdls_direct (int ,int ,int const*,int ,int ,int ,struct sk_buff*) ;
 int ieee80211_prep_tdls_encap_data (int ,int ,int const*,int ,int ,int ,struct sk_buff*) ;
 int ieee80211_tdls_add_ies (struct ieee80211_sub_if_data*,struct sk_buff*,int const*,int ,int ,int,int const*,size_t,int ,struct cfg80211_chan_def*) ;
 scalar_t__ max (int,int) ;
 struct sk_buff* netdev_alloc_skb (int ,scalar_t__) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static struct sk_buff *
ieee80211_tdls_build_mgmt_packet_data(struct ieee80211_sub_if_data *sdata,
          const u8 *peer, u8 action_code,
          u8 dialog_token, u16 status_code,
          bool initiator, const u8 *extra_ies,
          size_t extra_ies_len, u8 oper_class,
          struct cfg80211_chan_def *chandef)
{
 struct ieee80211_local *local = sdata->local;
 struct sk_buff *skb;
 int ret;

 skb = netdev_alloc_skb(sdata->dev,
          local->hw.extra_tx_headroom +
          max(sizeof(struct ieee80211_mgmt),
       sizeof(struct ieee80211_tdls_data)) +
          50 +
          10 +
          26 +
          2 + max(sizeof(struct ieee80211_ht_cap),
           sizeof(struct ieee80211_ht_operation)) +
          2 + max(sizeof(struct ieee80211_vht_cap),
           sizeof(struct ieee80211_vht_operation)) +
          50 +
          3 +
          4 +
          4 +
          extra_ies_len +
          sizeof(struct ieee80211_tdls_lnkie));
 if (!skb)
  return ((void*)0);

 skb_reserve(skb, local->hw.extra_tx_headroom);

 switch (action_code) {
 case 130:
 case 129:
 case 131:
 case 128:
 case 132:
 case 134:
 case 133:
  ret = ieee80211_prep_tdls_encap_data(local->hw.wiphy,
           sdata->dev, peer,
           action_code, dialog_token,
           status_code, skb);
  break;
 case 135:
  ret = ieee80211_prep_tdls_direct(local->hw.wiphy, sdata->dev,
       peer, action_code,
       dialog_token, status_code,
       skb);
  break;
 default:
  ret = -ENOTSUPP;
  break;
 }

 if (ret < 0)
  goto fail;

 ieee80211_tdls_add_ies(sdata, skb, peer, action_code, status_code,
          initiator, extra_ies, extra_ies_len, oper_class,
          chandef);
 return skb;

fail:
 dev_kfree_skb(skb);
 return ((void*)0);
}
