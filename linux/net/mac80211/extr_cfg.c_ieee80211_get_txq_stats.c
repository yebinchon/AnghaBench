
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct TYPE_5__ {int txq; } ;
struct ieee80211_sub_if_data {TYPE_2__ vif; } ;
struct TYPE_6__ {int lock; int flows_cnt; int collisions; int overmemory; int overlimit; int memory_usage; int backlog; } ;
struct ieee80211_local {TYPE_3__ fq; TYPE_1__* ops; } ;
struct cfg80211_txq_stats {int filled; int max_flows; int collisions; int overmemory; int overlimit; int backlog_bytes; int backlog_packets; } ;
struct TYPE_4__ {int wake_tx_queue; } ;


 int BIT (int ) ;
 struct ieee80211_sub_if_data* IEEE80211_WDEV_TO_SUB_IF (struct wireless_dev*) ;
 int NL80211_TXQ_STATS_BACKLOG_BYTES ;
 int NL80211_TXQ_STATS_BACKLOG_PACKETS ;
 int NL80211_TXQ_STATS_COLLISIONS ;
 int NL80211_TXQ_STATS_MAX_FLOWS ;
 int NL80211_TXQ_STATS_OVERLIMIT ;
 int NL80211_TXQ_STATS_OVERMEMORY ;
 int ieee80211_fill_txq_stats (struct cfg80211_txq_stats*,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int to_txq_info (int ) ;
 struct ieee80211_local* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int ieee80211_get_txq_stats(struct wiphy *wiphy,
       struct wireless_dev *wdev,
       struct cfg80211_txq_stats *txqstats)
{
 struct ieee80211_local *local = wiphy_priv(wiphy);
 struct ieee80211_sub_if_data *sdata;
 int ret = 0;

 if (!local->ops->wake_tx_queue)
  return 1;

 spin_lock_bh(&local->fq.lock);
 rcu_read_lock();

 if (wdev) {
  sdata = IEEE80211_WDEV_TO_SUB_IF(wdev);
  if (!sdata->vif.txq) {
   ret = 1;
   goto out;
  }
  ieee80211_fill_txq_stats(txqstats, to_txq_info(sdata->vif.txq));
 } else {

  txqstats->filled |= BIT(NL80211_TXQ_STATS_BACKLOG_PACKETS) |
        BIT(NL80211_TXQ_STATS_BACKLOG_BYTES) |
        BIT(NL80211_TXQ_STATS_OVERLIMIT) |
        BIT(NL80211_TXQ_STATS_OVERMEMORY) |
        BIT(NL80211_TXQ_STATS_COLLISIONS) |
        BIT(NL80211_TXQ_STATS_MAX_FLOWS);
  txqstats->backlog_packets = local->fq.backlog;
  txqstats->backlog_bytes = local->fq.memory_usage;
  txqstats->overlimit = local->fq.overlimit;
  txqstats->overmemory = local->fq.overmemory;
  txqstats->collisions = local->fq.collisions;
  txqstats->max_flows = local->fq.flows_cnt;
 }

out:
 rcu_read_unlock();
 spin_unlock_bh(&local->fq.lock);

 return ret;
}
