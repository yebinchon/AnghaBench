
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_9__ {int const* addr; } ;
struct ieee80211_sub_if_data {TYPE_2__ vif; struct ieee80211_local* local; } ;
struct ieee80211_msrment_ie {int type; int token; } ;
struct TYPE_14__ {int type; int mode; int token; } ;
struct TYPE_10__ {int length; TYPE_7__ msr_elem; int element_id; int dialog_token; int action_code; } ;
struct TYPE_11__ {TYPE_3__ measurement; } ;
struct TYPE_12__ {TYPE_4__ u; int category; } ;
struct TYPE_13__ {TYPE_5__ action; } ;
struct ieee80211_mgmt {TYPE_6__ u; int frame_control; int bssid; int sa; int da; } ;
struct TYPE_8__ {scalar_t__ extra_tx_headroom; } ;
struct ieee80211_local {TYPE_1__ hw; } ;


 int ETH_ALEN ;
 int IEEE80211_FTYPE_MGMT ;
 int IEEE80211_SPCT_MSR_RPRT_MODE_REFUSED ;
 int IEEE80211_STYPE_ACTION ;
 int WLAN_ACTION_SPCT_MSR_RPRT ;
 int WLAN_CATEGORY_SPECTRUM_MGMT ;
 int WLAN_EID_MEASURE_REPORT ;
 int cpu_to_le16 (int) ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int ieee80211_tx_skb (struct ieee80211_sub_if_data*,struct sk_buff*) ;
 int memcpy (int ,int const*,int ) ;
 int memset (TYPE_7__*,int ,int) ;
 int skb_put (struct sk_buff*,int) ;
 struct ieee80211_mgmt* skb_put_zero (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static void ieee80211_send_refuse_measurement_request(struct ieee80211_sub_if_data *sdata,
     struct ieee80211_msrment_ie *request_ie,
     const u8 *da, const u8 *bssid,
     u8 dialog_token)
{
 struct ieee80211_local *local = sdata->local;
 struct sk_buff *skb;
 struct ieee80211_mgmt *msr_report;

 skb = dev_alloc_skb(sizeof(*msr_report) + local->hw.extra_tx_headroom +
    sizeof(struct ieee80211_msrment_ie));
 if (!skb)
  return;

 skb_reserve(skb, local->hw.extra_tx_headroom);
 msr_report = skb_put_zero(skb, 24);
 memcpy(msr_report->da, da, ETH_ALEN);
 memcpy(msr_report->sa, sdata->vif.addr, ETH_ALEN);
 memcpy(msr_report->bssid, bssid, ETH_ALEN);
 msr_report->frame_control = cpu_to_le16(IEEE80211_FTYPE_MGMT |
      IEEE80211_STYPE_ACTION);

 skb_put(skb, 1 + sizeof(msr_report->u.action.u.measurement));
 msr_report->u.action.category = WLAN_CATEGORY_SPECTRUM_MGMT;
 msr_report->u.action.u.measurement.action_code =
    WLAN_ACTION_SPCT_MSR_RPRT;
 msr_report->u.action.u.measurement.dialog_token = dialog_token;

 msr_report->u.action.u.measurement.element_id = WLAN_EID_MEASURE_REPORT;
 msr_report->u.action.u.measurement.length =
   sizeof(struct ieee80211_msrment_ie);

 memset(&msr_report->u.action.u.measurement.msr_elem, 0,
  sizeof(struct ieee80211_msrment_ie));
 msr_report->u.action.u.measurement.msr_elem.token = request_ie->token;
 msr_report->u.action.u.measurement.msr_elem.mode |=
   IEEE80211_SPCT_MSR_RPRT_MODE_REFUSED;
 msr_report->u.action.u.measurement.msr_elem.type = request_ie->type;

 ieee80211_tx_skb(sdata, skb);
}
