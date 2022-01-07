
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_8__ {scalar_t__ type; int addr; } ;
struct ieee80211_if_managed {TYPE_3__* assoc_data; TYPE_2__* auth_data; struct cfg80211_bss* associated; } ;
struct TYPE_5__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_4__ vif; TYPE_1__ u; } ;
struct ieee80211_hw {int dummy; } ;
struct cfg80211_bss {int channel; int bssid; } ;
struct TYPE_7__ {struct cfg80211_bss* bss; } ;
struct TYPE_6__ {struct cfg80211_bss* bss; } ;


 int const IEEE80211_MAX_SSID_LEN ;
 int IEEE80211_PROBE_FLAG_DIRECTED ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ WARN_ONCE (int,char*,int const) ;
 int WLAN_EID_SSID ;
 int* ieee80211_bss_get_ie (struct cfg80211_bss*,int ) ;
 struct sk_buff* ieee80211_build_probe_req (struct ieee80211_sub_if_data*,int ,int ,int ,int ,int const*,int,int *,int ,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sdata_assert_lock (struct ieee80211_sub_if_data*) ;
 struct ieee80211_sub_if_data* vif_to_sdata (struct ieee80211_vif*) ;

struct sk_buff *ieee80211_ap_probereq_get(struct ieee80211_hw *hw,
       struct ieee80211_vif *vif)
{
 struct ieee80211_sub_if_data *sdata = vif_to_sdata(vif);
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 struct cfg80211_bss *cbss;
 struct sk_buff *skb;
 const u8 *ssid;
 int ssid_len;

 if (WARN_ON(sdata->vif.type != NL80211_IFTYPE_STATION))
  return ((void*)0);

 sdata_assert_lock(sdata);

 if (ifmgd->associated)
  cbss = ifmgd->associated;
 else if (ifmgd->auth_data)
  cbss = ifmgd->auth_data->bss;
 else if (ifmgd->assoc_data)
  cbss = ifmgd->assoc_data->bss;
 else
  return ((void*)0);

 rcu_read_lock();
 ssid = ieee80211_bss_get_ie(cbss, WLAN_EID_SSID);
 if (WARN_ONCE(!ssid || ssid[1] > IEEE80211_MAX_SSID_LEN,
        "invalid SSID element (len=%d)", ssid ? ssid[1] : -1))
  ssid_len = 0;
 else
  ssid_len = ssid[1];

 skb = ieee80211_build_probe_req(sdata, sdata->vif.addr, cbss->bssid,
     (u32) -1, cbss->channel,
     ssid + 2, ssid_len,
     ((void*)0), 0, IEEE80211_PROBE_FLAG_DIRECTED);
 rcu_read_unlock();

 return skb;
}
