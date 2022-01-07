
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef struct cfg80211_connect_params {scalar_t__ auth_type; int ie_len; int ie; struct cfg80211_connect_params const* bssid; } const cfg80211_connect_params ;
typedef struct cfg80211_connect_params u8 ;
struct wireless_dev {TYPE_3__* conn; int wiphy; int ssid_len; int ssid; TYPE_5__* current_bss; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
struct cfg80211_bss {int dummy; } ;
typedef enum nl80211_timeout_reason { ____Placeholder_nl80211_timeout_reason } nl80211_timeout_reason ;
struct TYPE_10__ {struct cfg80211_bss pub; } ;
struct TYPE_8__ {int ssid_len; int ssid; int auth_type; int ie; int ie_len; struct TYPE_8__* bssid; } ;
struct TYPE_9__ {int auto_auth; int prev_bssid_valid; int state; TYPE_2__* prev_bssid; TYPE_2__ params; int ie; TYPE_2__* bssid; } ;
struct TYPE_7__ {int assoc; int auth; } ;


 int CFG80211_CONN_SCAN_AGAIN ;
 int EBUSY ;
 int EINPROGRESS ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 scalar_t__ NL80211_AUTHTYPE_AUTOMATIC ;
 int NL80211_AUTHTYPE_OPEN_SYSTEM ;
 scalar_t__ WARN_ON (TYPE_3__*) ;
 int cfg80211_conn_do_work (struct wireless_dev*,int*) ;
 int cfg80211_conn_scan (struct wireless_dev*) ;
 struct cfg80211_bss* cfg80211_get_conn_bss (struct wireless_dev*) ;
 int cfg80211_put_bss (int ,struct cfg80211_bss*) ;
 int cfg80211_sme_free (struct wireless_dev*) ;
 scalar_t__ cfg80211_sme_get_conn_ies (struct wireless_dev*,int ,int ,int *,int *) ;
 int cfg80211_unhold_bss (TYPE_5__*) ;
 int kfree (TYPE_3__*) ;
 TYPE_3__* kzalloc (int,int ) ;
 int memcpy (TYPE_2__*,struct cfg80211_connect_params const*,int) ;
 struct cfg80211_registered_device* wiphy_to_rdev (int ) ;

__attribute__((used)) static int cfg80211_sme_connect(struct wireless_dev *wdev,
    struct cfg80211_connect_params *connect,
    const u8 *prev_bssid)
{
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wdev->wiphy);
 struct cfg80211_bss *bss;
 int err;

 if (!rdev->ops->auth || !rdev->ops->assoc)
  return -EOPNOTSUPP;

 if (wdev->current_bss) {
  cfg80211_unhold_bss(wdev->current_bss);
  cfg80211_put_bss(wdev->wiphy, &wdev->current_bss->pub);
  wdev->current_bss = ((void*)0);

  cfg80211_sme_free(wdev);
 }

 if (WARN_ON(wdev->conn))
  return -EINPROGRESS;

 wdev->conn = kzalloc(sizeof(*wdev->conn), GFP_KERNEL);
 if (!wdev->conn)
  return -ENOMEM;




 memcpy(&wdev->conn->params, connect, sizeof(*connect));
 if (connect->bssid) {
  wdev->conn->params.bssid = wdev->conn->bssid;
  memcpy(wdev->conn->bssid, connect->bssid, ETH_ALEN);
 }

 if (cfg80211_sme_get_conn_ies(wdev, connect->ie, connect->ie_len,
          &wdev->conn->ie,
          &wdev->conn->params.ie_len)) {
  kfree(wdev->conn);
  wdev->conn = ((void*)0);
  return -ENOMEM;
 }
 wdev->conn->params.ie = wdev->conn->ie;

 if (connect->auth_type == NL80211_AUTHTYPE_AUTOMATIC) {
  wdev->conn->auto_auth = 1;

  wdev->conn->params.auth_type =
   NL80211_AUTHTYPE_OPEN_SYSTEM;
 } else {
  wdev->conn->auto_auth = 0;
 }

 wdev->conn->params.ssid = wdev->ssid;
 wdev->conn->params.ssid_len = wdev->ssid_len;


 bss = cfg80211_get_conn_bss(wdev);

 if (prev_bssid) {
  memcpy(wdev->conn->prev_bssid, prev_bssid, ETH_ALEN);
  wdev->conn->prev_bssid_valid = 1;
 }


 if (bss) {
  enum nl80211_timeout_reason treason;

  err = cfg80211_conn_do_work(wdev, &treason);
  cfg80211_put_bss(wdev->wiphy, bss);
 } else {

  err = cfg80211_conn_scan(wdev);






  if (err == -EBUSY) {
   err = 0;
   wdev->conn->state = CFG80211_CONN_SCAN_AGAIN;
  }
 }

 if (err)
  cfg80211_sme_free(wdev);

 return err;
}
