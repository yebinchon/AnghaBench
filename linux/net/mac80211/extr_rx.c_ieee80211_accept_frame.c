
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct TYPE_11__ {int * remote_addr; } ;
struct TYPE_8__ {int * bssid; } ;
struct TYPE_7__ {int use_4addr; } ;
struct TYPE_12__ {TYPE_5__ wds; TYPE_2__ ibss; TYPE_1__ mgd; } ;
struct TYPE_10__ {int type; int * addr; } ;
struct ieee80211_sub_if_data {TYPE_6__ u; TYPE_4__ vif; TYPE_3__* dev; } ;
struct ieee80211_rx_status {int rate_idx; int encoding; } ;
struct ieee80211_rx_data {int sta; struct sk_buff* skb; struct ieee80211_sub_if_data* sdata; } ;
struct ieee80211_hdr {int frame_control; int addr2; int addr1; } ;
struct TYPE_9__ {int * dev_addr; } ;


 int BIT (int) ;
 struct ieee80211_rx_status* IEEE80211_SKB_RXCB (struct sk_buff*) ;
 int RX_ENC_LEGACY ;
 int WARN_ON_ONCE (int) ;
 int ether_addr_equal (int *,int ) ;
 int ieee80211_bssid_match (int *,int *) ;
 int * ieee80211_get_bssid (struct ieee80211_hdr*,int ,int) ;
 int ieee80211_has_tods (int ) ;
 int ieee80211_ibss_rx_no_sta (struct ieee80211_sub_if_data*,int *,int ,int ) ;
 int ieee80211_is_action (int ) ;
 int ieee80211_is_beacon (int ) ;
 int ieee80211_is_data (int ) ;
 int ieee80211_is_data_present (int ) ;
 int ieee80211_is_probe_req (int ) ;
 int ieee80211_is_probe_resp (int ) ;
 int ieee80211_is_public_action (struct ieee80211_hdr*,int ) ;
 int ieee80211_is_robust_mgmt_frame (struct sk_buff*) ;
 int ieee80211_ocb_rx_no_sta (struct ieee80211_sub_if_data*,int *,int ,int ) ;
 int is_broadcast_ether_addr (int *) ;
 int is_multicast_ether_addr (int ) ;

__attribute__((used)) static bool ieee80211_accept_frame(struct ieee80211_rx_data *rx)
{
 struct ieee80211_sub_if_data *sdata = rx->sdata;
 struct sk_buff *skb = rx->skb;
 struct ieee80211_hdr *hdr = (void *)skb->data;
 struct ieee80211_rx_status *status = IEEE80211_SKB_RXCB(skb);
 u8 *bssid = ieee80211_get_bssid(hdr, skb->len, sdata->vif.type);
 bool multicast = is_multicast_ether_addr(hdr->addr1);

 switch (sdata->vif.type) {
 case 129:
  if (!bssid && !sdata->u.mgd.use_4addr)
   return 0;
  if (ieee80211_is_robust_mgmt_frame(skb) && !rx->sta)
   return 0;
  if (multicast)
   return 1;
  return ether_addr_equal(sdata->vif.addr, hdr->addr1);
 case 136:
  if (!bssid)
   return 0;
  if (ether_addr_equal(sdata->vif.addr, hdr->addr2) ||
      ether_addr_equal(sdata->u.ibss.bssid, hdr->addr2))
   return 0;
  if (ieee80211_is_beacon(hdr->frame_control))
   return 1;
  if (!ieee80211_bssid_match(bssid, sdata->u.ibss.bssid))
   return 0;
  if (!multicast &&
      !ether_addr_equal(sdata->vif.addr, hdr->addr1))
   return 0;
  if (!rx->sta) {
   int rate_idx;
   if (status->encoding != RX_ENC_LEGACY)
    rate_idx = 0;
   else
    rate_idx = status->rate_idx;
   ieee80211_ibss_rx_no_sta(sdata, bssid, hdr->addr2,
       BIT(rate_idx));
  }
  return 1;
 case 131:
  if (!bssid)
   return 0;
  if (!ieee80211_is_data_present(hdr->frame_control))
   return 0;
  if (!is_broadcast_ether_addr(bssid))
   return 0;
  if (!multicast &&
      !ether_addr_equal(sdata->dev->dev_addr, hdr->addr1))
   return 0;
  if (!rx->sta) {
   int rate_idx;
   if (status->encoding != RX_ENC_LEGACY)
    rate_idx = 0;
   else
    rate_idx = status->rate_idx;
   ieee80211_ocb_rx_no_sta(sdata, bssid, hdr->addr2,
      BIT(rate_idx));
  }
  return 1;
 case 133:
  if (ether_addr_equal(sdata->vif.addr, hdr->addr2))
   return 0;
  if (multicast)
   return 1;
  return ether_addr_equal(sdata->vif.addr, hdr->addr1);
 case 134:
 case 135:
  if (!bssid)
   return ether_addr_equal(sdata->vif.addr, hdr->addr1);

  if (!ieee80211_bssid_match(bssid, sdata->vif.addr)) {






   if (!multicast &&
       !ether_addr_equal(sdata->vif.addr, hdr->addr1))
    return 0;
   if (ieee80211_is_public_action(hdr, skb->len))
    return 1;
   return ieee80211_is_beacon(hdr->frame_control);
  }

  if (!ieee80211_has_tods(hdr->frame_control)) {

   if (ieee80211_is_data(hdr->frame_control))
    return 0;

   if (ieee80211_is_action(hdr->frame_control) &&
       !is_broadcast_ether_addr(bssid) &&
       !ether_addr_equal(bssid, hdr->addr1))
    return 0;
  }
  if (ieee80211_is_data(hdr->frame_control) && multicast)
   return 0;

  return 1;
 case 128:
  if (bssid || !ieee80211_is_data(hdr->frame_control))
   return 0;
  return ether_addr_equal(sdata->u.wds.remote_addr, hdr->addr2);
 case 130:
  return ieee80211_is_public_action(hdr, skb->len) ||
         ieee80211_is_probe_req(hdr->frame_control) ||
         ieee80211_is_probe_resp(hdr->frame_control) ||
         ieee80211_is_beacon(hdr->frame_control);
 case 132:

  return 0;
 default:
  break;
 }

 WARN_ON_ONCE(1);
 return 0;
}
