
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ieee802_11_elems {scalar_t__ challenge_len; scalar_t__ challenge; } ;
struct TYPE_6__ {struct ieee80211_mgd_auth_data* auth_data; } ;
struct TYPE_7__ {TYPE_1__ mgd; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; TYPE_2__ u; } ;
struct TYPE_8__ {int * variable; } ;
struct TYPE_9__ {TYPE_3__ auth; } ;
struct ieee80211_mgmt {int bssid; TYPE_4__ u; } ;
struct ieee80211_mgd_auth_data {int expected_transaction; int key_idx; int key_len; int key; TYPE_5__* bss; int algorithm; } ;
struct ieee80211_local {int hw; } ;
struct TYPE_10__ {int bssid; } ;


 int IEEE80211_TX_CTL_REQ_TX_STATUS ;
 int IEEE80211_TX_INTFL_MLME_CONN_TX ;
 int REPORTS_TX_ACK_STATUS ;
 int drv_mgd_prepare_tx (struct ieee80211_local*,struct ieee80211_sub_if_data*,int ) ;
 scalar_t__ ieee80211_hw_check (int *,int ) ;
 int ieee80211_send_auth (struct ieee80211_sub_if_data*,int,int ,int ,scalar_t__,scalar_t__,int ,int ,int ,int ,int ,int) ;
 int ieee802_11_parse_elems (int *,size_t,int,struct ieee802_11_elems*,int ,int ) ;

__attribute__((used)) static void ieee80211_auth_challenge(struct ieee80211_sub_if_data *sdata,
         struct ieee80211_mgmt *mgmt, size_t len)
{
 struct ieee80211_local *local = sdata->local;
 struct ieee80211_mgd_auth_data *auth_data = sdata->u.mgd.auth_data;
 u8 *pos;
 struct ieee802_11_elems elems;
 u32 tx_flags = 0;

 pos = mgmt->u.auth.variable;
 ieee802_11_parse_elems(pos, len - (pos - (u8 *)mgmt), 0, &elems,
          mgmt->bssid, auth_data->bss->bssid);
 if (!elems.challenge)
  return;
 auth_data->expected_transaction = 4;
 drv_mgd_prepare_tx(sdata->local, sdata, 0);
 if (ieee80211_hw_check(&local->hw, REPORTS_TX_ACK_STATUS))
  tx_flags = IEEE80211_TX_CTL_REQ_TX_STATUS |
      IEEE80211_TX_INTFL_MLME_CONN_TX;
 ieee80211_send_auth(sdata, 3, auth_data->algorithm, 0,
       elems.challenge - 2, elems.challenge_len + 2,
       auth_data->bss->bssid, auth_data->bss->bssid,
       auth_data->key, auth_data->key_len,
       auth_data->key_idx, tx_flags);
}
