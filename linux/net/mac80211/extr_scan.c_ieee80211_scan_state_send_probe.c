
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct ieee80211_sub_if_data {int dummy; } ;
struct TYPE_7__ {TYPE_5__* chan; } ;
struct TYPE_8__ {TYPE_2__ chandef; } ;
struct TYPE_9__ {TYPE_3__ conf; } ;
struct ieee80211_local {int next_scan_state; TYPE_4__ hw; int scan_addr; int mtx; int scan_sdata; int scan_req; } ;
struct cfg80211_scan_request {int flags; int n_ssids; int * rates; int ie_len; int ie; TYPE_1__* ssids; int bssid; scalar_t__ no_cck; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_10__ {int band; } ;
struct TYPE_6__ {int ssid_len; int ssid; } ;


 unsigned long IEEE80211_CHANNEL_TIME ;
 int IEEE80211_PROBE_FLAG_MIN_CONTENT ;
 int IEEE80211_PROBE_FLAG_RANDOM_SN ;
 int IEEE80211_TX_CTL_NO_CCK_RATE ;
 int IEEE80211_TX_INTFL_OFFCHAN_TX_OK ;
 int NL80211_SCAN_FLAG_MIN_PREQ_CONTENT ;
 int NL80211_SCAN_FLAG_RANDOM_SN ;
 int SCAN_DECISION ;
 int ieee80211_send_scan_probe_req (struct ieee80211_sub_if_data*,int ,int ,int ,int ,int ,int ,int ,int ,int ,TYPE_5__*) ;
 int lockdep_is_held (int *) ;
 void* rcu_dereference_protected (int ,int ) ;

__attribute__((used)) static void ieee80211_scan_state_send_probe(struct ieee80211_local *local,
         unsigned long *next_delay)
{
 int i;
 struct ieee80211_sub_if_data *sdata;
 struct cfg80211_scan_request *scan_req;
 enum nl80211_band band = local->hw.conf.chandef.chan->band;
 u32 flags = 0, tx_flags;

 scan_req = rcu_dereference_protected(local->scan_req,
          lockdep_is_held(&local->mtx));

 tx_flags = IEEE80211_TX_INTFL_OFFCHAN_TX_OK;
 if (scan_req->no_cck)
  tx_flags |= IEEE80211_TX_CTL_NO_CCK_RATE;
 if (scan_req->flags & NL80211_SCAN_FLAG_MIN_PREQ_CONTENT)
  flags |= IEEE80211_PROBE_FLAG_MIN_CONTENT;
 if (scan_req->flags & NL80211_SCAN_FLAG_RANDOM_SN)
  flags |= IEEE80211_PROBE_FLAG_RANDOM_SN;

 sdata = rcu_dereference_protected(local->scan_sdata,
       lockdep_is_held(&local->mtx));

 for (i = 0; i < scan_req->n_ssids; i++)
  ieee80211_send_scan_probe_req(
   sdata, local->scan_addr, scan_req->bssid,
   scan_req->ssids[i].ssid, scan_req->ssids[i].ssid_len,
   scan_req->ie, scan_req->ie_len,
   scan_req->rates[band], flags,
   tx_flags, local->hw.conf.chandef.chan);





 *next_delay = IEEE80211_CHANNEL_TIME;
 local->next_scan_state = SCAN_DECISION;
}
