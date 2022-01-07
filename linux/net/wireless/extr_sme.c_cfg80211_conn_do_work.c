
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wireless_dev {int netdev; TYPE_2__* conn; int wiphy; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
struct cfg80211_connect_params {int bssid; int ssid_len; int ssid; int channel; int vht_capa_mask; int vht_capa; int ht_capa_mask; int ht_capa; int flags; int crypto; int mfp; int ie_len; int ie; int key_idx; int key_len; int key; int auth_type; } ;
struct cfg80211_assoc_request {int use_mfp; int vht_capa_mask; int vht_capa; int ht_capa_mask; int ht_capa; int flags; int crypto; int ie_len; int ie; int prev_bssid; } ;
typedef enum nl80211_timeout_reason { ____Placeholder_nl80211_timeout_reason } nl80211_timeout_reason ;
struct TYPE_4__ {int state; int prev_bssid; int prev_bssid_valid; struct cfg80211_connect_params params; } ;
struct TYPE_3__ {int assoc; int auth; } ;


 int ASSERT_WDEV_LOCK (struct wireless_dev*) ;


 int CFG80211_CONN_ASSOCIATING ;



 int CFG80211_CONN_AUTHENTICATING ;




 int ENOENT ;
 int ENOTCONN ;
 int EOPNOTSUPP ;
 int NL80211_MFP_NO ;
 int NL80211_TIMEOUT_ASSOC ;
 int NL80211_TIMEOUT_AUTH ;
 int WARN_ON (int) ;
 int WLAN_REASON_DEAUTH_LEAVING ;
 int cfg80211_conn_scan (struct wireless_dev*) ;
 int cfg80211_mlme_assoc (struct cfg80211_registered_device*,int ,int ,int ,int ,int ,struct cfg80211_assoc_request*) ;
 int cfg80211_mlme_auth (struct cfg80211_registered_device*,int ,int ,int ,int ,int ,int ,int *,int ,int ,int ,int ,int *,int ) ;
 int cfg80211_mlme_deauth (struct cfg80211_registered_device*,int ,int ,int *,int ,int ,int) ;
 int cfg80211_sme_free (struct wireless_dev*) ;
 struct cfg80211_registered_device* wiphy_to_rdev (int ) ;

__attribute__((used)) static int cfg80211_conn_do_work(struct wireless_dev *wdev,
     enum nl80211_timeout_reason *treason)
{
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wdev->wiphy);
 struct cfg80211_connect_params *params;
 struct cfg80211_assoc_request req = {};
 int err;

 ASSERT_WDEV_LOCK(wdev);

 if (!wdev->conn)
  return 0;

 params = &wdev->conn->params;

 switch (wdev->conn->state) {
 case 129:

  return -ENOENT;
 case 128:
  return cfg80211_conn_scan(wdev);
 case 132:
  if (WARN_ON(!rdev->ops->auth))
   return -EOPNOTSUPP;
  wdev->conn->state = CFG80211_CONN_AUTHENTICATING;
  return cfg80211_mlme_auth(rdev, wdev->netdev,
       params->channel, params->auth_type,
       params->bssid,
       params->ssid, params->ssid_len,
       ((void*)0), 0,
       params->key, params->key_len,
       params->key_idx, ((void*)0), 0);
 case 131:
  *treason = NL80211_TIMEOUT_AUTH;
  return -ENOTCONN;
 case 135:
  if (WARN_ON(!rdev->ops->assoc))
   return -EOPNOTSUPP;
  wdev->conn->state = CFG80211_CONN_ASSOCIATING;
  if (wdev->conn->prev_bssid_valid)
   req.prev_bssid = wdev->conn->prev_bssid;
  req.ie = params->ie;
  req.ie_len = params->ie_len;
  req.use_mfp = params->mfp != NL80211_MFP_NO;
  req.crypto = params->crypto;
  req.flags = params->flags;
  req.ht_capa = params->ht_capa;
  req.ht_capa_mask = params->ht_capa_mask;
  req.vht_capa = params->vht_capa;
  req.vht_capa_mask = params->vht_capa_mask;

  err = cfg80211_mlme_assoc(rdev, wdev->netdev, params->channel,
       params->bssid, params->ssid,
       params->ssid_len, &req);
  if (err)
   cfg80211_mlme_deauth(rdev, wdev->netdev, params->bssid,
          ((void*)0), 0,
          WLAN_REASON_DEAUTH_LEAVING,
          0);
  return err;
 case 133:
  *treason = NL80211_TIMEOUT_ASSOC;

 case 134:
  cfg80211_mlme_deauth(rdev, wdev->netdev, params->bssid,
         ((void*)0), 0,
         WLAN_REASON_DEAUTH_LEAVING, 0);
  return -ENOTCONN;
 case 130:
  cfg80211_mlme_deauth(rdev, wdev->netdev, params->bssid,
         ((void*)0), 0,
         WLAN_REASON_DEAUTH_LEAVING, 0);

 case 136:

  cfg80211_sme_free(wdev);
  return 0;
 default:
  return 0;
 }
}
