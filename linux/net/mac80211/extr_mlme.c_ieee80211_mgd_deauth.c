
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
struct ieee80211_if_managed {TYPE_6__* associated; TYPE_5__* assoc_data; TYPE_3__* auth_data; } ;
struct TYPE_7__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {int local; TYPE_1__ u; } ;
struct cfg80211_deauth_request {int reason_code; int bssid; int local_state_change; } ;
typedef int frame_buf ;
struct TYPE_12__ {int bssid; } ;
struct TYPE_11__ {TYPE_4__* bss; } ;
struct TYPE_10__ {int bssid; } ;
struct TYPE_9__ {TYPE_2__* bss; } ;
struct TYPE_8__ {int bssid; } ;


 int ENOTCONN ;
 int IEEE80211_DEAUTH_FRAME_LEN ;
 int IEEE80211_STYPE_DEAUTH ;
 int drv_mgd_prepare_tx (int ,struct ieee80211_sub_if_data*,int ) ;
 scalar_t__ ether_addr_equal (int ,int ) ;
 int ieee80211_destroy_assoc_data (struct ieee80211_sub_if_data*,int,int) ;
 int ieee80211_destroy_auth_data (struct ieee80211_sub_if_data*,int) ;
 int ieee80211_get_reason_code_string (int ) ;
 int ieee80211_report_disconnect (struct ieee80211_sub_if_data*,int *,int,int,int ) ;
 int ieee80211_send_deauth_disassoc (struct ieee80211_sub_if_data*,int ,int ,int ,int ,int,int *) ;
 int ieee80211_set_disassoc (struct ieee80211_sub_if_data*,int ,int ,int,int *) ;
 int sdata_info (struct ieee80211_sub_if_data*,char*,int ,int ,int ) ;

int ieee80211_mgd_deauth(struct ieee80211_sub_if_data *sdata,
    struct cfg80211_deauth_request *req)
{
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 u8 frame_buf[IEEE80211_DEAUTH_FRAME_LEN];
 bool tx = !req->local_state_change;

 if (ifmgd->auth_data &&
     ether_addr_equal(ifmgd->auth_data->bss->bssid, req->bssid)) {
  sdata_info(sdata,
      "aborting authentication with %pM by local choice (Reason: %u=%s)\n",
      req->bssid, req->reason_code,
      ieee80211_get_reason_code_string(req->reason_code));

  drv_mgd_prepare_tx(sdata->local, sdata, 0);
  ieee80211_send_deauth_disassoc(sdata, req->bssid, req->bssid,
            IEEE80211_STYPE_DEAUTH,
            req->reason_code, tx,
            frame_buf);
  ieee80211_destroy_auth_data(sdata, 0);
  ieee80211_report_disconnect(sdata, frame_buf,
         sizeof(frame_buf), 1,
         req->reason_code);

  return 0;
 }

 if (ifmgd->assoc_data &&
     ether_addr_equal(ifmgd->assoc_data->bss->bssid, req->bssid)) {
  sdata_info(sdata,
      "aborting association with %pM by local choice (Reason: %u=%s)\n",
      req->bssid, req->reason_code,
      ieee80211_get_reason_code_string(req->reason_code));

  drv_mgd_prepare_tx(sdata->local, sdata, 0);
  ieee80211_send_deauth_disassoc(sdata, req->bssid, req->bssid,
            IEEE80211_STYPE_DEAUTH,
            req->reason_code, tx,
            frame_buf);
  ieee80211_destroy_assoc_data(sdata, 0, 1);
  ieee80211_report_disconnect(sdata, frame_buf,
         sizeof(frame_buf), 1,
         req->reason_code);
  return 0;
 }

 if (ifmgd->associated &&
     ether_addr_equal(ifmgd->associated->bssid, req->bssid)) {
  sdata_info(sdata,
      "deauthenticating from %pM by local choice (Reason: %u=%s)\n",
      req->bssid, req->reason_code,
      ieee80211_get_reason_code_string(req->reason_code));

  ieee80211_set_disassoc(sdata, IEEE80211_STYPE_DEAUTH,
           req->reason_code, tx, frame_buf);
  ieee80211_report_disconnect(sdata, frame_buf,
         sizeof(frame_buf), 1,
         req->reason_code);
  return 0;
 }

 return -ENOTCONN;
}
