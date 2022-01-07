
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int width; struct ieee80211_channel* chan; scalar_t__ center_freq2; int center_freq1; } ;
struct ieee80211_local {size_t scan_channel_idx; void* next_scan_state; TYPE_1__ scan_chandef; TYPE_1__ _oper_chandef; int mtx; int scan_req; } ;
struct ieee80211_channel {int flags; int center_freq; } ;
struct cfg80211_scan_request {int scan_width; int n_ssids; struct ieee80211_channel** channels; } ;
typedef enum nl80211_bss_scan_width { ____Placeholder_nl80211_bss_scan_width } nl80211_bss_scan_width ;


 int IEEE80211_CHAN_NO_IR ;
 int IEEE80211_CHAN_RADAR ;
 int IEEE80211_CONF_CHANGE_CHANNEL ;
 unsigned long IEEE80211_PASSIVE_CHANNEL_TIME ;
 unsigned long IEEE80211_PROBE_DELAY ;



 int NL80211_CHAN_WIDTH_10 ;
 int NL80211_CHAN_WIDTH_20_NOHT ;
 int NL80211_CHAN_WIDTH_5 ;
 void* SCAN_DECISION ;
 void* SCAN_SEND_PROBE ;
 int cfg80211_chandef_to_scan_width (TYPE_1__*) ;
 scalar_t__ ieee80211_hw_config (struct ieee80211_local*,int ) ;
 int lockdep_is_held (int *) ;
 struct cfg80211_scan_request* rcu_dereference_protected (int ,int ) ;

__attribute__((used)) static void ieee80211_scan_state_set_channel(struct ieee80211_local *local,
          unsigned long *next_delay)
{
 int skip;
 struct ieee80211_channel *chan;
 enum nl80211_bss_scan_width oper_scan_width;
 struct cfg80211_scan_request *scan_req;

 scan_req = rcu_dereference_protected(local->scan_req,
          lockdep_is_held(&local->mtx));

 skip = 0;
 chan = scan_req->channels[local->scan_channel_idx];

 local->scan_chandef.chan = chan;
 local->scan_chandef.center_freq1 = chan->center_freq;
 local->scan_chandef.center_freq2 = 0;
 switch (scan_req->scan_width) {
 case 128:
  local->scan_chandef.width = NL80211_CHAN_WIDTH_5;
  break;
 case 130:
  local->scan_chandef.width = NL80211_CHAN_WIDTH_10;
  break;
 case 129:



  oper_scan_width = cfg80211_chandef_to_scan_width(
     &local->_oper_chandef);
  if (chan == local->_oper_chandef.chan &&
      oper_scan_width == scan_req->scan_width)
   local->scan_chandef = local->_oper_chandef;
  else
   local->scan_chandef.width = NL80211_CHAN_WIDTH_20_NOHT;
  break;
 }

 if (ieee80211_hw_config(local, IEEE80211_CONF_CHANGE_CHANNEL))
  skip = 1;


 local->scan_channel_idx++;

 if (skip) {

  local->next_scan_state = SCAN_DECISION;
  return;
 }
 if ((chan->flags & (IEEE80211_CHAN_NO_IR | IEEE80211_CHAN_RADAR)) ||
     !scan_req->n_ssids) {
  *next_delay = IEEE80211_PASSIVE_CHANNEL_TIME;
  local->next_scan_state = SCAN_DECISION;
  return;
 }


 *next_delay = IEEE80211_PROBE_DELAY;
 local->next_scan_state = SCAN_SEND_PROBE;
}
