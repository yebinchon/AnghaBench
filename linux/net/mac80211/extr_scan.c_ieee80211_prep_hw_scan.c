
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ieee80211_local {scalar_t__ hw_scan_band; TYPE_3__* hw_scan_req; int hw_scan_ies_bufsize; int hw; int scanning; int mtx; int scan_req; } ;
struct cfg80211_scan_request {int n_channels; int flags; int bssid; int mac_addr_mask; int mac_addr; int no_cck; int rates; int ie_len; int ie; int scan_width; TYPE_1__** channels; } ;
struct cfg80211_chan_def {int dummy; } ;
struct TYPE_5__ {int n_channels; int ie_len; int bssid; int mac_addr_mask; int mac_addr; int no_cck; scalar_t__ ie; TYPE_1__** channels; } ;
struct TYPE_6__ {TYPE_2__ req; int ies; } ;
struct TYPE_4__ {scalar_t__ band; } ;


 int BIT (scalar_t__) ;
 int IEEE80211_PROBE_FLAG_MIN_CONTENT ;
 int NL80211_SCAN_FLAG_MIN_PREQ_CONTENT ;
 scalar_t__ NUM_NL80211_BANDS ;
 int SCAN_HW_CANCELLED ;
 int SINGLE_SCAN_ON_ALL_BANDS ;
 int ether_addr_copy (int ,int ) ;
 int ieee80211_build_preq_ies (struct ieee80211_local*,int *,int ,int *,int ,int ,int ,int ,struct cfg80211_chan_def*,int ) ;
 scalar_t__ ieee80211_hw_check (int *,int ) ;
 int ieee80211_prepare_scan_chandef (struct cfg80211_chan_def*,int ) ;
 int lockdep_is_held (int *) ;
 struct cfg80211_scan_request* rcu_dereference_protected (int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool ieee80211_prep_hw_scan(struct ieee80211_local *local)
{
 struct cfg80211_scan_request *req;
 struct cfg80211_chan_def chandef;
 u8 bands_used = 0;
 int i, ielen, n_chans;
 u32 flags = 0;

 req = rcu_dereference_protected(local->scan_req,
     lockdep_is_held(&local->mtx));

 if (test_bit(SCAN_HW_CANCELLED, &local->scanning))
  return 0;

 if (ieee80211_hw_check(&local->hw, SINGLE_SCAN_ON_ALL_BANDS)) {
  for (i = 0; i < req->n_channels; i++) {
   local->hw_scan_req->req.channels[i] = req->channels[i];
   bands_used |= BIT(req->channels[i]->band);
  }

  n_chans = req->n_channels;
 } else {
  do {
   if (local->hw_scan_band == NUM_NL80211_BANDS)
    return 0;

   n_chans = 0;

   for (i = 0; i < req->n_channels; i++) {
    if (req->channels[i]->band !=
        local->hw_scan_band)
     continue;
    local->hw_scan_req->req.channels[n_chans] =
       req->channels[i];
    n_chans++;
    bands_used |= BIT(req->channels[i]->band);
   }

   local->hw_scan_band++;
  } while (!n_chans);
 }

 local->hw_scan_req->req.n_channels = n_chans;
 ieee80211_prepare_scan_chandef(&chandef, req->scan_width);

 if (req->flags & NL80211_SCAN_FLAG_MIN_PREQ_CONTENT)
  flags |= IEEE80211_PROBE_FLAG_MIN_CONTENT;

 ielen = ieee80211_build_preq_ies(local,
      (u8 *)local->hw_scan_req->req.ie,
      local->hw_scan_ies_bufsize,
      &local->hw_scan_req->ies,
      req->ie, req->ie_len,
      bands_used, req->rates, &chandef,
      flags);
 local->hw_scan_req->req.ie_len = ielen;
 local->hw_scan_req->req.no_cck = req->no_cck;
 ether_addr_copy(local->hw_scan_req->req.mac_addr, req->mac_addr);
 ether_addr_copy(local->hw_scan_req->req.mac_addr_mask,
   req->mac_addr_mask);
 ether_addr_copy(local->hw_scan_req->req.bssid, req->bssid);

 return 1;
}
