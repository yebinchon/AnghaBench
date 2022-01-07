
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
typedef scalar_t__ u32 ;
struct wireless_dev {scalar_t__ ssid_len; TYPE_6__* current_bss; struct cfg80211_cached_keys* connect_keys; int conn_bss_type; int ssid; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct TYPE_8__ {int vht_capa_mod_mask; int ht_capa_mod_mask; } ;
struct cfg80211_registered_device {TYPE_5__* ops; TYPE_2__ wiphy; } ;
struct TYPE_10__ {scalar_t__ cipher_group; int n_ciphers_pairwise; int wep_tx_key; TYPE_3__* wep_keys; scalar_t__* ciphers_pairwise; } ;
struct cfg80211_connect_params {scalar_t__ ssid_len; int key_idx; scalar_t__ pbss; int ssid; TYPE_4__ crypto; int key_len; int key; int vht_capa_mask; int ht_capa_mask; } ;
struct cfg80211_cached_keys {scalar_t__ def; TYPE_3__* params; } ;
struct TYPE_7__ {int bssid; } ;
struct TYPE_12__ {TYPE_1__ pub; } ;
struct TYPE_11__ {int connect; } ;
struct TYPE_9__ {scalar_t__ cipher; int key_len; int key; } ;


 int ASSERT_WDEV_LOCK (struct wireless_dev*) ;
 int EALREADY ;
 int EINPROGRESS ;
 int EINVAL ;
 int ENOTCONN ;
 int IEEE80211_BSS_TYPE_ESS ;
 int IEEE80211_BSS_TYPE_PBSS ;
 scalar_t__ WARN_ON (struct cfg80211_cached_keys*) ;
 scalar_t__ WLAN_CIPHER_SUITE_WEP104 ;
 scalar_t__ WLAN_CIPHER_SUITE_WEP40 ;
 int cfg80211_oper_and_ht_capa (int *,int ) ;
 int cfg80211_oper_and_vht_capa (int *,int ) ;
 int cfg80211_sme_connect (struct wireless_dev*,struct cfg80211_connect_params*,int const*) ;
 int ether_addr_equal (int const*,int ) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;
 int memcpy (int ,int ,scalar_t__) ;
 int rdev_connect (struct cfg80211_registered_device*,struct net_device*,struct cfg80211_connect_params*) ;

int cfg80211_connect(struct cfg80211_registered_device *rdev,
       struct net_device *dev,
       struct cfg80211_connect_params *connect,
       struct cfg80211_cached_keys *connkeys,
       const u8 *prev_bssid)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 int err;

 ASSERT_WDEV_LOCK(wdev);






 if (wdev->ssid_len &&
     (wdev->ssid_len != connect->ssid_len ||
      memcmp(wdev->ssid, connect->ssid, wdev->ssid_len)))
  return -EALREADY;





 if (wdev->current_bss) {
  if (!prev_bssid)
   return -EALREADY;
  if (!ether_addr_equal(prev_bssid, wdev->current_bss->pub.bssid))
   return -ENOTCONN;
 }






 if (wdev->connect_keys)
  return -EINPROGRESS;

 cfg80211_oper_and_ht_capa(&connect->ht_capa_mask,
      rdev->wiphy.ht_capa_mod_mask);
 cfg80211_oper_and_vht_capa(&connect->vht_capa_mask,
       rdev->wiphy.vht_capa_mod_mask);

 if (connkeys && connkeys->def >= 0) {
  int idx;
  u32 cipher;

  idx = connkeys->def;
  cipher = connkeys->params[idx].cipher;

  if (cipher == WLAN_CIPHER_SUITE_WEP40 ||
      cipher == WLAN_CIPHER_SUITE_WEP104) {
   connect->key_idx = idx;
   connect->key = connkeys->params[idx].key;
   connect->key_len = connkeys->params[idx].key_len;





   if (connect->crypto.cipher_group == 0)
    connect->crypto.cipher_group = cipher;

   if (connect->crypto.n_ciphers_pairwise == 0) {
    connect->crypto.n_ciphers_pairwise = 1;
    connect->crypto.ciphers_pairwise[0] = cipher;
   }
  }

  connect->crypto.wep_keys = connkeys->params;
  connect->crypto.wep_tx_key = connkeys->def;
 } else {
  if (WARN_ON(connkeys))
   return -EINVAL;
 }

 wdev->connect_keys = connkeys;
 memcpy(wdev->ssid, connect->ssid, connect->ssid_len);
 wdev->ssid_len = connect->ssid_len;

 wdev->conn_bss_type = connect->pbss ? IEEE80211_BSS_TYPE_PBSS :
           IEEE80211_BSS_TYPE_ESS;

 if (!rdev->ops->connect)
  err = cfg80211_sme_connect(wdev, connect, prev_bssid);
 else
  err = rdev_connect(rdev, dev, connect);

 if (err) {
  wdev->connect_keys = ((void*)0);




  if (!wdev->current_bss)
   wdev->ssid_len = 0;
  return err;
 }

 return 0;
}
