
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct ieee80211_if_managed {int flags; } ;
struct TYPE_4__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_2__ vif; TYPE_1__ u; } ;
struct ieee80211_local {int hw; } ;
struct ieee80211_hdr_3addr {int frame_control; } ;
struct TYPE_6__ {int flags; } ;


 int DOESNT_SUPPORT_QOS_NDP ;
 int IEEE80211_FCTL_PM ;
 TYPE_3__* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_STA_CONNECTION_POLL ;
 int IEEE80211_STA_DISABLE_HE ;
 int IEEE80211_TX_CTL_REQ_TX_STATUS ;
 int IEEE80211_TX_CTL_USE_MINRATE ;
 int IEEE80211_TX_INTFL_DONT_ENCRYPT ;
 int IEEE80211_TX_INTFL_OFFCHAN_TX_OK ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int REPORTS_TX_ACK_STATUS ;
 int cpu_to_le16 (int ) ;
 scalar_t__ ieee80211_hw_check (int *,int ) ;
 struct sk_buff* ieee80211_nullfunc_get (int *,TYPE_2__*,int) ;
 int ieee80211_tx_skb (struct ieee80211_sub_if_data*,struct sk_buff*) ;

void ieee80211_send_nullfunc(struct ieee80211_local *local,
        struct ieee80211_sub_if_data *sdata,
        bool powersave)
{
 struct sk_buff *skb;
 struct ieee80211_hdr_3addr *nullfunc;
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;


 if (sdata->vif.type == NL80211_IFTYPE_STATION &&
     !(ifmgd->flags & IEEE80211_STA_DISABLE_HE))
  return;

 skb = ieee80211_nullfunc_get(&local->hw, &sdata->vif,
  !ieee80211_hw_check(&local->hw, DOESNT_SUPPORT_QOS_NDP));
 if (!skb)
  return;

 nullfunc = (struct ieee80211_hdr_3addr *) skb->data;
 if (powersave)
  nullfunc->frame_control |= cpu_to_le16(IEEE80211_FCTL_PM);

 IEEE80211_SKB_CB(skb)->flags |= IEEE80211_TX_INTFL_DONT_ENCRYPT |
     IEEE80211_TX_INTFL_OFFCHAN_TX_OK;

 if (ieee80211_hw_check(&local->hw, REPORTS_TX_ACK_STATUS))
  IEEE80211_SKB_CB(skb)->flags |= IEEE80211_TX_CTL_REQ_TX_STATUS;

 if (ifmgd->flags & IEEE80211_STA_CONNECTION_POLL)
  IEEE80211_SKB_CB(skb)->flags |= IEEE80211_TX_CTL_USE_MINRATE;

 ieee80211_tx_skb(sdata, skb);
}
