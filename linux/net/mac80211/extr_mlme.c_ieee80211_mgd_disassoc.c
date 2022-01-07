
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_if_managed {TYPE_2__* associated; } ;
struct TYPE_3__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_1__ u; } ;
struct cfg80211_disassoc_request {int reason_code; int local_state_change; TYPE_2__* bss; } ;
typedef int frame_buf ;
struct TYPE_4__ {int bssid; } ;


 int ENOLINK ;
 int ETH_ALEN ;
 int IEEE80211_DEAUTH_FRAME_LEN ;
 int IEEE80211_STYPE_DISASSOC ;
 int ieee80211_get_reason_code_string (int ) ;
 int ieee80211_report_disconnect (struct ieee80211_sub_if_data*,int *,int,int,int ) ;
 int ieee80211_set_disassoc (struct ieee80211_sub_if_data*,int ,int ,int,int *) ;
 int memcpy (int *,int ,int) ;
 int sdata_info (struct ieee80211_sub_if_data*,char*,int ,int ,int ) ;

int ieee80211_mgd_disassoc(struct ieee80211_sub_if_data *sdata,
      struct cfg80211_disassoc_request *req)
{
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 u8 bssid[ETH_ALEN];
 u8 frame_buf[IEEE80211_DEAUTH_FRAME_LEN];







 if (ifmgd->associated != req->bss)
  return -ENOLINK;

 sdata_info(sdata,
     "disassociating from %pM by local choice (Reason: %u=%s)\n",
     req->bss->bssid, req->reason_code, ieee80211_get_reason_code_string(req->reason_code));

 memcpy(bssid, req->bss->bssid, ETH_ALEN);
 ieee80211_set_disassoc(sdata, IEEE80211_STYPE_DISASSOC,
          req->reason_code, !req->local_state_change,
          frame_buf);

 ieee80211_report_disconnect(sdata, frame_buf, sizeof(frame_buf), 1,
        req->reason_code);

 return 0;
}
