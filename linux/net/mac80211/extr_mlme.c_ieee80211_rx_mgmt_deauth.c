
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
typedef int u16 ;
struct ieee80211_if_managed {TYPE_6__* assoc_data; TYPE_4__* associated; } ;
struct TYPE_7__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {int dev; TYPE_1__ u; } ;
struct TYPE_8__ {int reason_code; } ;
struct TYPE_9__ {TYPE_2__ deauth; } ;
struct ieee80211_mgmt {int bssid; int * sa; TYPE_3__ u; } ;
struct TYPE_12__ {TYPE_5__* bss; } ;
struct TYPE_11__ {int * bssid; } ;
struct TYPE_10__ {int * bssid; } ;


 int cfg80211_rx_mlme_mgmt (int ,int *,size_t) ;
 scalar_t__ ether_addr_equal (int ,int *) ;
 int ieee80211_destroy_assoc_data (struct ieee80211_sub_if_data*,int,int) ;
 int ieee80211_get_reason_code_string (int ) ;
 int ieee80211_report_disconnect (struct ieee80211_sub_if_data*,int *,size_t,int,int ) ;
 int ieee80211_set_disassoc (struct ieee80211_sub_if_data*,int ,int ,int,int *) ;
 int ieee80211_tdls_handle_disconnect (struct ieee80211_sub_if_data*,int *,int ) ;
 int le16_to_cpu (int ) ;
 int sdata_assert_lock (struct ieee80211_sub_if_data*) ;
 int sdata_info (struct ieee80211_sub_if_data*,char*,int const*,int ,int ) ;

__attribute__((used)) static void ieee80211_rx_mgmt_deauth(struct ieee80211_sub_if_data *sdata,
         struct ieee80211_mgmt *mgmt, size_t len)
{
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 u16 reason_code = le16_to_cpu(mgmt->u.deauth.reason_code);

 sdata_assert_lock(sdata);

 if (len < 24 + 2)
  return;

 if (!ether_addr_equal(mgmt->bssid, mgmt->sa)) {
  ieee80211_tdls_handle_disconnect(sdata, mgmt->sa, reason_code);
  return;
 }

 if (ifmgd->associated &&
     ether_addr_equal(mgmt->bssid, ifmgd->associated->bssid)) {
  const u8 *bssid = ifmgd->associated->bssid;

  sdata_info(sdata, "deauthenticated from %pM (Reason: %u=%s)\n",
      bssid, reason_code,
      ieee80211_get_reason_code_string(reason_code));

  ieee80211_set_disassoc(sdata, 0, 0, 0, ((void*)0));

  ieee80211_report_disconnect(sdata, (u8 *)mgmt, len, 0,
         reason_code);
  return;
 }

 if (ifmgd->assoc_data &&
     ether_addr_equal(mgmt->bssid, ifmgd->assoc_data->bss->bssid)) {
  const u8 *bssid = ifmgd->assoc_data->bss->bssid;

  sdata_info(sdata,
      "deauthenticated from %pM while associating (Reason: %u=%s)\n",
      bssid, reason_code,
      ieee80211_get_reason_code_string(reason_code));

  ieee80211_destroy_assoc_data(sdata, 0, 1);

  cfg80211_rx_mlme_mgmt(sdata->dev, (u8 *)mgmt, len);
  return;
 }
}
