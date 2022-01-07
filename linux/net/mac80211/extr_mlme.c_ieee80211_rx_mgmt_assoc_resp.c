
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
typedef int u32 ;
typedef int u16 ;
struct ieee802_11_elems {TYPE_4__* timeout_int; } ;
struct ieee80211_if_managed {int assoc_req_ies_len; int assoc_req_ies; struct ieee80211_mgd_assoc_data* assoc_data; } ;
struct TYPE_8__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {int dev; TYPE_7__* tx_conf; int local; TYPE_1__ u; } ;
struct TYPE_9__ {int * variable; int aid; int status_code; int capab_info; } ;
struct TYPE_10__ {TYPE_2__ assoc_resp; } ;
struct ieee80211_mgmt {int sa; int bssid; TYPE_3__ u; int frame_control; } ;
struct ieee80211_mgd_assoc_data {int timeout_started; struct cfg80211_bss* bss; scalar_t__ timeout; scalar_t__ fils_kek_len; } ;
struct TYPE_12__ {int reason; int status; int data; } ;
struct TYPE_13__ {TYPE_5__ mlme; } ;
struct ieee80211_event {TYPE_6__ u; int type; } ;
struct cfg80211_bss {int bssid; } ;
struct TYPE_14__ {scalar_t__ uapsd; } ;
struct TYPE_11__ {scalar_t__ type; int value; } ;


 int ASSOC_EVENT ;
 int BIT (int) ;
 int IEEE80211_ASSOC_TIMEOUT ;
 int IEEE80211_NUM_ACS ;
 int MLME_DENIED ;
 int MLME_EVENT ;
 int MLME_SUCCESS ;
 int WLAN_STATUS_ASSOC_REJECTED_TEMPORARILY ;
 int WLAN_STATUS_SUCCESS ;
 scalar_t__ WLAN_TIMEOUT_ASSOC_COMEBACK ;
 int cfg80211_assoc_timeout (int ,struct cfg80211_bss*) ;
 int cfg80211_rx_assoc_resp (int ,struct cfg80211_bss*,int *,size_t,int,int ,int ) ;
 int drv_event_callback (int ,struct ieee80211_sub_if_data*,struct ieee80211_event*) ;
 int ether_addr_equal (int ,int ) ;
 scalar_t__ fils_decrypt_assoc_resp (struct ieee80211_sub_if_data*,int *,size_t*,struct ieee80211_mgd_assoc_data*) ;
 int* ieee80211_ac_to_qos_mask ;
 int ieee80211_assoc_success (struct ieee80211_sub_if_data*,struct cfg80211_bss*,struct ieee80211_mgmt*,size_t) ;
 int ieee80211_destroy_assoc_data (struct ieee80211_sub_if_data*,int,int) ;
 int ieee80211_is_reassoc_resp (int ) ;
 int ieee802_11_parse_elems (int *,size_t,int,struct ieee802_11_elems*,int ,int ) ;
 scalar_t__ jiffies ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int run_again (struct ieee80211_sub_if_data*,scalar_t__) ;
 int sdata_assert_lock (struct ieee80211_sub_if_data*) ;
 int sdata_info (struct ieee80211_sub_if_data*,char*,...) ;

__attribute__((used)) static void ieee80211_rx_mgmt_assoc_resp(struct ieee80211_sub_if_data *sdata,
      struct ieee80211_mgmt *mgmt,
      size_t len)
{
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 struct ieee80211_mgd_assoc_data *assoc_data = ifmgd->assoc_data;
 u16 capab_info, status_code, aid;
 struct ieee802_11_elems elems;
 int ac, uapsd_queues = -1;
 u8 *pos;
 bool reassoc;
 struct cfg80211_bss *bss;
 struct ieee80211_event event = {
  .type = MLME_EVENT,
  .u.mlme.data = ASSOC_EVENT,
 };

 sdata_assert_lock(sdata);

 if (!assoc_data)
  return;
 if (!ether_addr_equal(assoc_data->bss->bssid, mgmt->bssid))
  return;






 if (len < 24 + 6)
  return;

 reassoc = ieee80211_is_reassoc_resp(mgmt->frame_control);
 capab_info = le16_to_cpu(mgmt->u.assoc_resp.capab_info);
 status_code = le16_to_cpu(mgmt->u.assoc_resp.status_code);
 aid = le16_to_cpu(mgmt->u.assoc_resp.aid);

 sdata_info(sdata,
     "RX %sssocResp from %pM (capab=0x%x status=%d aid=%d)\n",
     reassoc ? "Rea" : "A", mgmt->sa,
     capab_info, status_code, (u16)(aid & ~(BIT(15) | BIT(14))));

 if (assoc_data->fils_kek_len &&
     fils_decrypt_assoc_resp(sdata, (u8 *)mgmt, &len, assoc_data) < 0)
  return;

 pos = mgmt->u.assoc_resp.variable;
 ieee802_11_parse_elems(pos, len - (pos - (u8 *)mgmt), 0, &elems,
          mgmt->bssid, assoc_data->bss->bssid);

 if (status_code == WLAN_STATUS_ASSOC_REJECTED_TEMPORARILY &&
     elems.timeout_int &&
     elems.timeout_int->type == WLAN_TIMEOUT_ASSOC_COMEBACK) {
  u32 tu, ms;
  tu = le32_to_cpu(elems.timeout_int->value);
  ms = tu * 1024 / 1000;
  sdata_info(sdata,
      "%pM rejected association temporarily; comeback duration %u TU (%u ms)\n",
      mgmt->sa, tu, ms);
  assoc_data->timeout = jiffies + msecs_to_jiffies(ms);
  assoc_data->timeout_started = 1;
  if (ms > IEEE80211_ASSOC_TIMEOUT)
   run_again(sdata, assoc_data->timeout);
  return;
 }

 bss = assoc_data->bss;

 if (status_code != WLAN_STATUS_SUCCESS) {
  sdata_info(sdata, "%pM denied association (code=%d)\n",
      mgmt->sa, status_code);
  ieee80211_destroy_assoc_data(sdata, 0, 0);
  event.u.mlme.status = MLME_DENIED;
  event.u.mlme.reason = status_code;
  drv_event_callback(sdata->local, sdata, &event);
 } else {
  if (!ieee80211_assoc_success(sdata, bss, mgmt, len)) {

   ieee80211_destroy_assoc_data(sdata, 0, 0);
   cfg80211_assoc_timeout(sdata->dev, bss);
   return;
  }
  event.u.mlme.status = MLME_SUCCESS;
  drv_event_callback(sdata->local, sdata, &event);
  sdata_info(sdata, "associated\n");






  ieee80211_destroy_assoc_data(sdata, 1, 0);


  uapsd_queues = 0;
  for (ac = 0; ac < IEEE80211_NUM_ACS; ac++)
   if (sdata->tx_conf[ac].uapsd)
    uapsd_queues |= ieee80211_ac_to_qos_mask[ac];
 }

 cfg80211_rx_assoc_resp(sdata->dev, bss, (u8 *)mgmt, len, uapsd_queues,
          ifmgd->assoc_req_ies, ifmgd->assoc_req_ies_len);
}
