
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct ieee80211_if_managed {TYPE_2__* associated; } ;
struct TYPE_5__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_1__ u; } ;
struct TYPE_7__ {int reason_code; } ;
struct TYPE_8__ {TYPE_3__ disassoc; } ;
struct ieee80211_mgmt {int sa; int bssid; TYPE_4__ u; } ;
struct TYPE_6__ {int bssid; } ;


 int ether_addr_equal (int ,int ) ;
 int ieee80211_get_reason_code_string (int ) ;
 int ieee80211_report_disconnect (struct ieee80211_sub_if_data*,int *,size_t,int,int ) ;
 int ieee80211_set_disassoc (struct ieee80211_sub_if_data*,int ,int ,int,int *) ;
 int ieee80211_tdls_handle_disconnect (struct ieee80211_sub_if_data*,int ,int ) ;
 int le16_to_cpu (int ) ;
 int sdata_assert_lock (struct ieee80211_sub_if_data*) ;
 int sdata_info (struct ieee80211_sub_if_data*,char*,int ,int ,int ) ;

__attribute__((used)) static void ieee80211_rx_mgmt_disassoc(struct ieee80211_sub_if_data *sdata,
           struct ieee80211_mgmt *mgmt, size_t len)
{
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 u16 reason_code;

 sdata_assert_lock(sdata);

 if (len < 24 + 2)
  return;

 if (!ifmgd->associated ||
     !ether_addr_equal(mgmt->bssid, ifmgd->associated->bssid))
  return;

 reason_code = le16_to_cpu(mgmt->u.disassoc.reason_code);

 if (!ether_addr_equal(mgmt->bssid, mgmt->sa)) {
  ieee80211_tdls_handle_disconnect(sdata, mgmt->sa, reason_code);
  return;
 }

 sdata_info(sdata, "disassociated from %pM (Reason: %u=%s)\n",
     mgmt->sa, reason_code,
     ieee80211_get_reason_code_string(reason_code));

 ieee80211_set_disassoc(sdata, 0, 0, 0, ((void*)0));

 ieee80211_report_disconnect(sdata, (u8 *)mgmt, len, 0, reason_code);
}
