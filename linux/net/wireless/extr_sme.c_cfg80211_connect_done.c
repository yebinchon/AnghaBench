
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct wireless_dev {int event_lock; int event_list; int wiphy; int conn_bss_type; int ssid_len; int ssid; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int event_work; } ;
struct cfg80211_internal_bss {int ts; int list; } ;
struct TYPE_4__ {int kek_len; int pmk_len; int erp_next_seq_num; scalar_t__ update_erp_next_seq_num; int * pmkid; int * pmk; int * kek; } ;
struct TYPE_5__ {int req_ie_len; int resp_ie_len; int timeout_reason; int status; struct cfg80211_bss* bss; TYPE_1__ fils; int * resp_ie; int * req_ie; int * bssid; } ;
struct cfg80211_event {int list; TYPE_2__ cr; int type; } ;
struct TYPE_6__ {int kek_len; int pmk_len; int erp_next_seq_num; scalar_t__ update_erp_next_seq_num; scalar_t__ pmkid; scalar_t__ pmk; scalar_t__ kek; } ;
struct cfg80211_connect_resp_params {int req_ie_len; int resp_ie_len; int timeout_reason; int status; struct cfg80211_bss* bss; TYPE_3__ fils; scalar_t__ resp_ie; scalar_t__ req_ie; scalar_t__ bssid; } ;
struct cfg80211_bss {int bssid; } ;
typedef int gfp_t ;


 int ETH_ALEN ;
 int EVENT_CONNECT_RESULT ;
 int IEEE80211_PRIVACY_ANY ;
 int WLAN_PMKID_LEN ;
 struct cfg80211_internal_bss* bss_from_pub (struct cfg80211_bss*) ;
 int cfg80211_bss_update (struct cfg80211_registered_device*,struct cfg80211_internal_bss*,int,int ) ;
 struct cfg80211_bss* cfg80211_get_bss (int ,int *,int ,int ,int ,int ,int ) ;
 int cfg80211_hold_bss (struct cfg80211_internal_bss*) ;
 int cfg80211_put_bss (int ,struct cfg80211_bss*) ;
 int cfg80211_wq ;
 struct cfg80211_event* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int memcpy (void*,scalar_t__,int) ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct cfg80211_registered_device* wiphy_to_rdev (int ) ;

void cfg80211_connect_done(struct net_device *dev,
      struct cfg80211_connect_resp_params *params,
      gfp_t gfp)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wdev->wiphy);
 struct cfg80211_event *ev;
 unsigned long flags;
 u8 *next;

 if (params->bss) {
  struct cfg80211_internal_bss *ibss = bss_from_pub(params->bss);

  if (list_empty(&ibss->list)) {
   struct cfg80211_bss *found = ((void*)0), *tmp = params->bss;

   found = cfg80211_get_bss(wdev->wiphy, ((void*)0),
       params->bss->bssid,
       wdev->ssid, wdev->ssid_len,
       wdev->conn_bss_type,
       IEEE80211_PRIVACY_ANY);
   if (found) {



    params->bss = found;
   } else {
    cfg80211_bss_update(rdev, ibss, 0,
          ibss->ts);
   }

   cfg80211_put_bss(wdev->wiphy, tmp);
  }
 }

 ev = kzalloc(sizeof(*ev) + (params->bssid ? ETH_ALEN : 0) +
       params->req_ie_len + params->resp_ie_len +
       params->fils.kek_len + params->fils.pmk_len +
       (params->fils.pmkid ? WLAN_PMKID_LEN : 0), gfp);
 if (!ev) {
  cfg80211_put_bss(wdev->wiphy, params->bss);
  return;
 }

 ev->type = EVENT_CONNECT_RESULT;
 next = ((u8 *)ev) + sizeof(*ev);
 if (params->bssid) {
  ev->cr.bssid = next;
  memcpy((void *)ev->cr.bssid, params->bssid, ETH_ALEN);
  next += ETH_ALEN;
 }
 if (params->req_ie_len) {
  ev->cr.req_ie = next;
  ev->cr.req_ie_len = params->req_ie_len;
  memcpy((void *)ev->cr.req_ie, params->req_ie,
         params->req_ie_len);
  next += params->req_ie_len;
 }
 if (params->resp_ie_len) {
  ev->cr.resp_ie = next;
  ev->cr.resp_ie_len = params->resp_ie_len;
  memcpy((void *)ev->cr.resp_ie, params->resp_ie,
         params->resp_ie_len);
  next += params->resp_ie_len;
 }
 if (params->fils.kek_len) {
  ev->cr.fils.kek = next;
  ev->cr.fils.kek_len = params->fils.kek_len;
  memcpy((void *)ev->cr.fils.kek, params->fils.kek,
         params->fils.kek_len);
  next += params->fils.kek_len;
 }
 if (params->fils.pmk_len) {
  ev->cr.fils.pmk = next;
  ev->cr.fils.pmk_len = params->fils.pmk_len;
  memcpy((void *)ev->cr.fils.pmk, params->fils.pmk,
         params->fils.pmk_len);
  next += params->fils.pmk_len;
 }
 if (params->fils.pmkid) {
  ev->cr.fils.pmkid = next;
  memcpy((void *)ev->cr.fils.pmkid, params->fils.pmkid,
         WLAN_PMKID_LEN);
  next += WLAN_PMKID_LEN;
 }
 ev->cr.fils.update_erp_next_seq_num = params->fils.update_erp_next_seq_num;
 if (params->fils.update_erp_next_seq_num)
  ev->cr.fils.erp_next_seq_num = params->fils.erp_next_seq_num;
 if (params->bss)
  cfg80211_hold_bss(bss_from_pub(params->bss));
 ev->cr.bss = params->bss;
 ev->cr.status = params->status;
 ev->cr.timeout_reason = params->timeout_reason;

 spin_lock_irqsave(&wdev->event_lock, flags);
 list_add_tail(&ev->list, &wdev->event_list);
 spin_unlock_irqrestore(&wdev->event_lock, flags);
 queue_work(cfg80211_wq, &rdev->event_work);
}
