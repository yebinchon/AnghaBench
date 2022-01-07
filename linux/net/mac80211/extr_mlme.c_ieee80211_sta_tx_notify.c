
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_6__ {scalar_t__ probe_send_count; int nullfunc_failed; } ;
struct TYPE_5__ {TYPE_3__ mgd; } ;
struct ieee80211_sub_if_data {int work; TYPE_1__* local; TYPE_2__ u; } ;
struct ieee80211_hdr {int frame_control; } ;
struct TYPE_4__ {int hw; } ;


 int ieee80211_is_data (int ) ;
 scalar_t__ ieee80211_is_nullfunc (int ) ;
 int ieee80211_queue_work (int *,int *) ;
 int ieee80211_sta_reset_conn_monitor (struct ieee80211_sub_if_data*) ;
 int ieee80211_sta_tx_wmm_ac_notify (struct ieee80211_sub_if_data*,struct ieee80211_hdr*,int ) ;

void ieee80211_sta_tx_notify(struct ieee80211_sub_if_data *sdata,
        struct ieee80211_hdr *hdr, bool ack, u16 tx_time)
{
 ieee80211_sta_tx_wmm_ac_notify(sdata, hdr, tx_time);

 if (!ieee80211_is_data(hdr->frame_control))
     return;

 if (ieee80211_is_nullfunc(hdr->frame_control) &&
     sdata->u.mgd.probe_send_count > 0) {
  if (ack)
   ieee80211_sta_reset_conn_monitor(sdata);
  else
   sdata->u.mgd.nullfunc_failed = 1;
  ieee80211_queue_work(&sdata->local->hw, &sdata->work);
  return;
 }

 if (ack)
  ieee80211_sta_reset_conn_monitor(sdata);
}
