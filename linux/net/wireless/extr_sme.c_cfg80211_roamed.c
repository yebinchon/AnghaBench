
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
struct TYPE_5__ {int erp_next_seq_num; scalar_t__ update_erp_next_seq_num; scalar_t__ pmkid; scalar_t__ pmk_len; scalar_t__ pmk; scalar_t__ kek_len; scalar_t__ kek; } ;
struct cfg80211_roam_info {int bss; TYPE_2__ fils; scalar_t__ resp_ie_len; scalar_t__ resp_ie; scalar_t__ req_ie_len; scalar_t__ req_ie; int bssid; int channel; } ;
struct cfg80211_registered_device {int event_work; } ;
struct TYPE_4__ {int erp_next_seq_num; scalar_t__ update_erp_next_seq_num; int * pmkid; int * pmk; scalar_t__ pmk_len; int * kek; scalar_t__ kek_len; } ;
struct TYPE_6__ {int bss; TYPE_1__ fils; int * resp_ie; scalar_t__ resp_ie_len; int * req_ie; scalar_t__ req_ie_len; } ;
struct cfg80211_event {int list; TYPE_3__ rm; int type; } ;
typedef int gfp_t ;


 int EVENT_ROAMED ;
 int IEEE80211_PRIVACY_ANY ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ WLAN_PMKID_LEN ;
 int cfg80211_get_bss (int ,int ,int ,int ,int ,int ,int ) ;
 int cfg80211_put_bss (int ,int ) ;
 int cfg80211_wq ;
 struct cfg80211_event* kzalloc (scalar_t__,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (void*,scalar_t__,scalar_t__) ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct cfg80211_registered_device* wiphy_to_rdev (int ) ;

void cfg80211_roamed(struct net_device *dev, struct cfg80211_roam_info *info,
       gfp_t gfp)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wdev->wiphy);
 struct cfg80211_event *ev;
 unsigned long flags;
 u8 *next;

 if (!info->bss) {
  info->bss = cfg80211_get_bss(wdev->wiphy, info->channel,
          info->bssid, wdev->ssid,
          wdev->ssid_len,
          wdev->conn_bss_type,
          IEEE80211_PRIVACY_ANY);
 }

 if (WARN_ON(!info->bss))
  return;

 ev = kzalloc(sizeof(*ev) + info->req_ie_len + info->resp_ie_len +
       info->fils.kek_len + info->fils.pmk_len +
       (info->fils.pmkid ? WLAN_PMKID_LEN : 0), gfp);
 if (!ev) {
  cfg80211_put_bss(wdev->wiphy, info->bss);
  return;
 }

 ev->type = EVENT_ROAMED;
 next = ((u8 *)ev) + sizeof(*ev);
 if (info->req_ie_len) {
  ev->rm.req_ie = next;
  ev->rm.req_ie_len = info->req_ie_len;
  memcpy((void *)ev->rm.req_ie, info->req_ie, info->req_ie_len);
  next += info->req_ie_len;
 }
 if (info->resp_ie_len) {
  ev->rm.resp_ie = next;
  ev->rm.resp_ie_len = info->resp_ie_len;
  memcpy((void *)ev->rm.resp_ie, info->resp_ie,
         info->resp_ie_len);
  next += info->resp_ie_len;
 }
 if (info->fils.kek_len) {
  ev->rm.fils.kek = next;
  ev->rm.fils.kek_len = info->fils.kek_len;
  memcpy((void *)ev->rm.fils.kek, info->fils.kek,
         info->fils.kek_len);
  next += info->fils.kek_len;
 }
 if (info->fils.pmk_len) {
  ev->rm.fils.pmk = next;
  ev->rm.fils.pmk_len = info->fils.pmk_len;
  memcpy((void *)ev->rm.fils.pmk, info->fils.pmk,
         info->fils.pmk_len);
  next += info->fils.pmk_len;
 }
 if (info->fils.pmkid) {
  ev->rm.fils.pmkid = next;
  memcpy((void *)ev->rm.fils.pmkid, info->fils.pmkid,
         WLAN_PMKID_LEN);
  next += WLAN_PMKID_LEN;
 }
 ev->rm.fils.update_erp_next_seq_num = info->fils.update_erp_next_seq_num;
 if (info->fils.update_erp_next_seq_num)
  ev->rm.fils.erp_next_seq_num = info->fils.erp_next_seq_num;
 ev->rm.bss = info->bss;

 spin_lock_irqsave(&wdev->event_lock, flags);
 list_add_tail(&ev->list, &wdev->event_list);
 spin_unlock_irqrestore(&wdev->event_lock, flags);
 queue_work(cfg80211_wq, &rdev->event_work);
}
