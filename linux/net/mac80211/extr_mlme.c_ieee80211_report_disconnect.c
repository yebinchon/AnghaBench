
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct ieee80211_sub_if_data {int local; int dev; } ;
struct TYPE_3__ {int reason; int data; } ;
struct TYPE_4__ {TYPE_1__ mlme; } ;
struct ieee80211_event {TYPE_2__ u; int type; } ;


 int DEAUTH_RX_EVENT ;
 int DEAUTH_TX_EVENT ;
 int MLME_EVENT ;
 int cfg80211_rx_mlme_mgmt (int ,int const*,size_t) ;
 int cfg80211_tx_mlme_mgmt (int ,int const*,size_t) ;
 int drv_event_callback (int ,struct ieee80211_sub_if_data*,struct ieee80211_event*) ;

__attribute__((used)) static void ieee80211_report_disconnect(struct ieee80211_sub_if_data *sdata,
     const u8 *buf, size_t len, bool tx,
     u16 reason)
{
 struct ieee80211_event event = {
  .type = MLME_EVENT,
  .u.mlme.data = tx ? DEAUTH_TX_EVENT : DEAUTH_RX_EVENT,
  .u.mlme.reason = reason,
 };

 if (tx)
  cfg80211_tx_mlme_mgmt(sdata->dev, buf, len);
 else
  cfg80211_rx_mlme_mgmt(sdata->dev, buf, len);

 drv_event_callback(sdata->local, sdata, &event);
}
