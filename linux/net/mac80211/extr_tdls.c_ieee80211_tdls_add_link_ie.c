
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct ieee80211_tdls_lnkie {int ie_len; int resp_sta; int init_sta; int bssid; int ie_type; } ;
struct TYPE_5__ {int const* bssid; } ;
struct TYPE_6__ {TYPE_2__ mgd; } ;
struct TYPE_4__ {int * addr; } ;
struct ieee80211_sub_if_data {TYPE_3__ u; TYPE_1__ vif; } ;


 int ETH_ALEN ;
 int WLAN_EID_LINK_ID ;
 int memcpy (int ,int const*,int ) ;
 struct ieee80211_tdls_lnkie* skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void ieee80211_tdls_add_link_ie(struct ieee80211_sub_if_data *sdata,
           struct sk_buff *skb, const u8 *peer,
           bool initiator)
{
 struct ieee80211_tdls_lnkie *lnkid;
 const u8 *init_addr, *rsp_addr;

 if (initiator) {
  init_addr = sdata->vif.addr;
  rsp_addr = peer;
 } else {
  init_addr = peer;
  rsp_addr = sdata->vif.addr;
 }

 lnkid = skb_put(skb, sizeof(struct ieee80211_tdls_lnkie));

 lnkid->ie_type = WLAN_EID_LINK_ID;
 lnkid->ie_len = sizeof(struct ieee80211_tdls_lnkie) - 2;

 memcpy(lnkid->bssid, sdata->u.mgd.bssid, ETH_ALEN);
 memcpy(lnkid->init_sta, init_addr, ETH_ALEN);
 memcpy(lnkid->resp_sta, rsp_addr, ETH_ALEN);
}
