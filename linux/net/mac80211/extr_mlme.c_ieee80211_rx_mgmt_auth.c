
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct ieee80211_if_managed {TYPE_7__* auth_data; } ;
struct TYPE_9__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_8__* local; int dev; TYPE_1__ u; } ;
struct TYPE_11__ {int status_code; int auth_transaction; int auth_alg; } ;
struct TYPE_12__ {TYPE_3__ auth; } ;
struct ieee80211_mgmt {int sa; TYPE_4__ u; int bssid; } ;
struct TYPE_13__ {int reason; int status; int data; } ;
struct TYPE_14__ {TYPE_5__ mlme; } ;
struct ieee80211_event {TYPE_6__ u; int type; } ;
struct TYPE_16__ {int sta_mtx; } ;
struct TYPE_15__ {int algorithm; int expected_transaction; int peer_confirmed; TYPE_2__* bss; scalar_t__ done; } ;
struct TYPE_10__ {int bssid; } ;


 int AUTH_EVENT ;
 int ETH_ALEN ;
 int MLME_DENIED ;
 int MLME_EVENT ;
 int MLME_SUCCESS ;
 int WARN_ONCE (int,char*,int) ;
 int WLAN_STATUS_SUCCESS ;
 int cfg80211_rx_mlme_mgmt (int ,int *,size_t) ;
 int drv_event_callback (TYPE_8__*,struct ieee80211_sub_if_data*,struct ieee80211_event*) ;
 int ether_addr_equal (int *,int ) ;
 int ieee80211_auth_challenge (struct ieee80211_sub_if_data*,struct ieee80211_mgmt*,size_t) ;
 int ieee80211_destroy_auth_data (struct ieee80211_sub_if_data*,int) ;
 int ieee80211_mark_sta_auth (struct ieee80211_sub_if_data*,int *) ;
 int le16_to_cpu (int ) ;
 int memcpy (int *,int ,int) ;
 int mutex_unlock (int *) ;
 int sdata_assert_lock (struct ieee80211_sub_if_data*) ;
 int sdata_info (struct ieee80211_sub_if_data*,char*,...) ;

__attribute__((used)) static void ieee80211_rx_mgmt_auth(struct ieee80211_sub_if_data *sdata,
       struct ieee80211_mgmt *mgmt, size_t len)
{
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 u8 bssid[ETH_ALEN];
 u16 auth_alg, auth_transaction, status_code;
 struct ieee80211_event event = {
  .type = MLME_EVENT,
  .u.mlme.data = AUTH_EVENT,
 };

 sdata_assert_lock(sdata);

 if (len < 24 + 6)
  return;

 if (!ifmgd->auth_data || ifmgd->auth_data->done)
  return;

 memcpy(bssid, ifmgd->auth_data->bss->bssid, ETH_ALEN);

 if (!ether_addr_equal(bssid, mgmt->bssid))
  return;

 auth_alg = le16_to_cpu(mgmt->u.auth.auth_alg);
 auth_transaction = le16_to_cpu(mgmt->u.auth.auth_transaction);
 status_code = le16_to_cpu(mgmt->u.auth.status_code);

 if (auth_alg != ifmgd->auth_data->algorithm ||
     (auth_alg != 129 &&
      auth_transaction != ifmgd->auth_data->expected_transaction) ||
     (auth_alg == 129 &&
      (auth_transaction < ifmgd->auth_data->expected_transaction ||
       auth_transaction > 2))) {
  sdata_info(sdata, "%pM unexpected authentication state: alg %d (expected %d) transact %d (expected %d)\n",
      mgmt->sa, auth_alg, ifmgd->auth_data->algorithm,
      auth_transaction,
      ifmgd->auth_data->expected_transaction);
  return;
 }

 if (status_code != WLAN_STATUS_SUCCESS) {
  sdata_info(sdata, "%pM denied authentication (status %d)\n",
      mgmt->sa, status_code);
  ieee80211_destroy_auth_data(sdata, 0);
  cfg80211_rx_mlme_mgmt(sdata->dev, (u8 *)mgmt, len);
  event.u.mlme.status = MLME_DENIED;
  event.u.mlme.reason = status_code;
  drv_event_callback(sdata->local, sdata, &event);
  return;
 }

 switch (ifmgd->auth_data->algorithm) {
 case 130:
 case 131:
 case 132:
 case 129:
 case 134:
 case 133:
 case 135:
  break;
 case 128:
  if (ifmgd->auth_data->expected_transaction != 4) {
   ieee80211_auth_challenge(sdata, mgmt, len);

   return;
  }
  break;
 default:
  WARN_ONCE(1, "invalid auth alg %d",
     ifmgd->auth_data->algorithm);
  return;
 }

 event.u.mlme.status = MLME_SUCCESS;
 drv_event_callback(sdata->local, sdata, &event);
 if (ifmgd->auth_data->algorithm != 129 ||
     (auth_transaction == 2 &&
      ifmgd->auth_data->expected_transaction == 2)) {
  if (!ieee80211_mark_sta_auth(sdata, bssid))
   goto out_err;
 } else if (ifmgd->auth_data->algorithm == 129 &&
     auth_transaction == 2) {
  sdata_info(sdata, "SAE peer confirmed\n");
  ifmgd->auth_data->peer_confirmed = 1;
 }

 cfg80211_rx_mlme_mgmt(sdata->dev, (u8 *)mgmt, len);
 return;
 out_err:
 mutex_unlock(&sdata->local->sta_mtx);

}
