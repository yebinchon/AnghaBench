
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ lost_packets; scalar_t__ last_tdls_pkt_time; } ;
struct TYPE_7__ {int addr; scalar_t__ tdls; } ;
struct sta_info {TYPE_4__ status_stats; TYPE_3__ sta; TYPE_2__* sdata; TYPE_1__* local; } ;
struct ieee80211_tx_info {int flags; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int hw; } ;


 int GFP_ATOMIC ;
 int IEEE80211_TX_CTL_AMPDU ;
 int IEEE80211_TX_STAT_AMPDU ;
 int REPORTS_LOW_ACK ;
 scalar_t__ STA_LOST_PKT_THRESHOLD ;
 scalar_t__ STA_LOST_TDLS_PKT_THRESHOLD ;
 scalar_t__ STA_LOST_TDLS_PKT_TIME ;
 int cfg80211_cqm_pktloss_notify (int ,int ,scalar_t__,int ) ;
 scalar_t__ ieee80211_hw_check (int *,int ) ;
 int jiffies ;
 scalar_t__ time_before (int ,scalar_t__) ;

__attribute__((used)) static void ieee80211_lost_packet(struct sta_info *sta,
      struct ieee80211_tx_info *info)
{



 if (ieee80211_hw_check(&sta->local->hw, REPORTS_LOW_ACK))
  return;


 if ((info->flags & IEEE80211_TX_CTL_AMPDU) &&
     !(info->flags & IEEE80211_TX_STAT_AMPDU))
  return;

 sta->status_stats.lost_packets++;
 if (!sta->sta.tdls &&
     sta->status_stats.lost_packets < STA_LOST_PKT_THRESHOLD)
  return;







 if (sta->sta.tdls &&
     (sta->status_stats.lost_packets < STA_LOST_TDLS_PKT_THRESHOLD ||
      time_before(jiffies,
    sta->status_stats.last_tdls_pkt_time +
    STA_LOST_TDLS_PKT_TIME)))
  return;

 cfg80211_cqm_pktloss_notify(sta->sdata->dev, sta->sta.addr,
        sta->status_stats.lost_packets, GFP_ATOMIC);
 sta->status_stats.lost_packets = 0;
}
