
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct ieee80211_if_managed {struct ieee80211_mgd_auth_data* auth_data; int bssid; TYPE_2__* associated; scalar_t__ assoc_data; } ;
struct TYPE_6__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; TYPE_1__ u; } ;
struct ieee80211_mgd_auth_data {int sae_trans; size_t data_len; int key_len; TYPE_4__* bss; scalar_t__ peer_confirmed; int algorithm; int * key; int key_idx; int * data; void* sae_status; } ;
struct TYPE_8__ {int wiphy; } ;
struct ieee80211_local {int mtx; TYPE_3__ hw; } ;
struct cfg80211_auth_request {int auth_type; int auth_data_len; int ie_len; int key_len; TYPE_4__* bss; scalar_t__ key; int key_idx; scalar_t__ ie; scalar_t__ auth_data; } ;
typedef int frame_buf ;
typedef int __le16 ;
struct TYPE_9__ {int bssid; } ;
struct TYPE_7__ {int bssid; } ;


 int BSS_CHANGED_BSSID ;
 int EBUSY ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int IEEE80211_DEAUTH_FRAME_LEN ;
 int IEEE80211_STYPE_DEAUTH ;
 int WLAN_AUTH_FILS_PK ;
 int WLAN_AUTH_FILS_SK ;
 int WLAN_AUTH_FILS_SK_PFS ;
 int WLAN_AUTH_FT ;
 int WLAN_AUTH_LEAP ;
 int WLAN_AUTH_OPEN ;
 int WLAN_AUTH_SAE ;
 int WLAN_AUTH_SHARED_KEY ;
 int WLAN_REASON_UNSPECIFIED ;
 int cfg80211_ref_bss (int ,TYPE_4__*) ;
 int eth_zero_addr (int ) ;
 int fips_enabled ;
 int ieee80211_auth (struct ieee80211_sub_if_data*) ;
 int ieee80211_bss_info_change_notify (struct ieee80211_sub_if_data*,int ) ;
 int ieee80211_destroy_auth_data (struct ieee80211_sub_if_data*,int) ;
 int ieee80211_mark_sta_auth (struct ieee80211_sub_if_data*,int ) ;
 int ieee80211_prep_connection (struct ieee80211_sub_if_data*,TYPE_4__*,int,int) ;
 int ieee80211_report_disconnect (struct ieee80211_sub_if_data*,int *,int,int,int ) ;
 int ieee80211_set_disassoc (struct ieee80211_sub_if_data*,int ,int ,int,int *) ;
 int ieee80211_vif_release_channel (struct ieee80211_sub_if_data*) ;
 int kfree (struct ieee80211_mgd_auth_data*) ;
 struct ieee80211_mgd_auth_data* kzalloc (int,int ) ;
 void* le16_to_cpu (int ) ;
 int memcpy (int *,scalar_t__,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sdata_info (struct ieee80211_sub_if_data*,char*,int ,...) ;
 int sta_info_destroy_addr (struct ieee80211_sub_if_data*,int ) ;

int ieee80211_mgd_auth(struct ieee80211_sub_if_data *sdata,
         struct cfg80211_auth_request *req)
{
 struct ieee80211_local *local = sdata->local;
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 struct ieee80211_mgd_auth_data *auth_data;
 u16 auth_alg;
 int err;
 bool cont_auth;



 switch (req->auth_type) {
 case 130:
  auth_alg = WLAN_AUTH_OPEN;
  break;
 case 128:
  if (fips_enabled)
   return -EOPNOTSUPP;
  auth_alg = WLAN_AUTH_SHARED_KEY;
  break;
 case 132:
  auth_alg = WLAN_AUTH_FT;
  break;
 case 131:
  auth_alg = WLAN_AUTH_LEAP;
  break;
 case 129:
  auth_alg = WLAN_AUTH_SAE;
  break;
 case 134:
  auth_alg = WLAN_AUTH_FILS_SK;
  break;
 case 133:
  auth_alg = WLAN_AUTH_FILS_SK_PFS;
  break;
 case 135:
  auth_alg = WLAN_AUTH_FILS_PK;
  break;
 default:
  return -EOPNOTSUPP;
 }

 if (ifmgd->assoc_data)
  return -EBUSY;

 auth_data = kzalloc(sizeof(*auth_data) + req->auth_data_len +
       req->ie_len, GFP_KERNEL);
 if (!auth_data)
  return -ENOMEM;

 auth_data->bss = req->bss;

 if (req->auth_data_len >= 4) {
  if (req->auth_type == 129) {
   __le16 *pos = (__le16 *) req->auth_data;

   auth_data->sae_trans = le16_to_cpu(pos[0]);
   auth_data->sae_status = le16_to_cpu(pos[1]);
  }
  memcpy(auth_data->data, req->auth_data + 4,
         req->auth_data_len - 4);
  auth_data->data_len += req->auth_data_len - 4;
 }






 cont_auth = ifmgd->auth_data && req->bss == ifmgd->auth_data->bss;

 if (req->ie && req->ie_len) {
  memcpy(&auth_data->data[auth_data->data_len],
         req->ie, req->ie_len);
  auth_data->data_len += req->ie_len;
 }

 if (req->key && req->key_len) {
  auth_data->key_len = req->key_len;
  auth_data->key_idx = req->key_idx;
  memcpy(auth_data->key, req->key, req->key_len);
 }

 auth_data->algorithm = auth_alg;



 if (ifmgd->auth_data) {
  if (cont_auth && req->auth_type == 129) {
   auth_data->peer_confirmed =
    ifmgd->auth_data->peer_confirmed;
  }
  ieee80211_destroy_auth_data(sdata, cont_auth);
 }


 ifmgd->auth_data = auth_data;






 if (cont_auth && req->auth_type == 129 &&
     auth_data->peer_confirmed && auth_data->sae_trans == 2)
  ieee80211_mark_sta_auth(sdata, req->bss->bssid);

 if (ifmgd->associated) {
  u8 frame_buf[IEEE80211_DEAUTH_FRAME_LEN];

  sdata_info(sdata,
      "disconnect from AP %pM for new auth to %pM\n",
      ifmgd->associated->bssid, req->bss->bssid);
  ieee80211_set_disassoc(sdata, IEEE80211_STYPE_DEAUTH,
           WLAN_REASON_UNSPECIFIED,
           0, frame_buf);

  ieee80211_report_disconnect(sdata, frame_buf,
         sizeof(frame_buf), 1,
         WLAN_REASON_UNSPECIFIED);
 }

 sdata_info(sdata, "authenticate with %pM\n", req->bss->bssid);

 err = ieee80211_prep_connection(sdata, req->bss, cont_auth, 0);
 if (err)
  goto err_clear;

 err = ieee80211_auth(sdata);
 if (err) {
  sta_info_destroy_addr(sdata, req->bss->bssid);
  goto err_clear;
 }


 cfg80211_ref_bss(local->hw.wiphy, auth_data->bss);
 return 0;

 err_clear:
 eth_zero_addr(ifmgd->bssid);
 ieee80211_bss_info_change_notify(sdata, BSS_CHANGED_BSSID);
 ifmgd->auth_data = ((void*)0);
 mutex_lock(&sdata->local->mtx);
 ieee80211_vif_release_channel(sdata);
 mutex_unlock(&sdata->local->mtx);
 kfree(auth_data);
 return err;
}
