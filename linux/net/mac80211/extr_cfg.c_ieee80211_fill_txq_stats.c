
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tx_packets; int tx_bytes; int collisions; int overlimit; int flows; int backlog_packets; int backlog_bytes; } ;
struct TYPE_3__ {int ecn_mark; int drop_count; } ;
struct txq_info {TYPE_2__ tin; TYPE_1__ cstats; } ;
struct cfg80211_txq_stats {int filled; int tx_packets; int tx_bytes; int collisions; int overlimit; int ecn_marks; int drops; int flows; int backlog_packets; int backlog_bytes; } ;


 int BIT (int ) ;
 int NL80211_TXQ_STATS_BACKLOG_BYTES ;
 int NL80211_TXQ_STATS_BACKLOG_PACKETS ;
 int NL80211_TXQ_STATS_COLLISIONS ;
 int NL80211_TXQ_STATS_DROPS ;
 int NL80211_TXQ_STATS_ECN_MARKS ;
 int NL80211_TXQ_STATS_FLOWS ;
 int NL80211_TXQ_STATS_OVERLIMIT ;
 int NL80211_TXQ_STATS_TX_BYTES ;
 int NL80211_TXQ_STATS_TX_PACKETS ;

void ieee80211_fill_txq_stats(struct cfg80211_txq_stats *txqstats,
         struct txq_info *txqi)
{
 if (!(txqstats->filled & BIT(NL80211_TXQ_STATS_BACKLOG_BYTES))) {
  txqstats->filled |= BIT(NL80211_TXQ_STATS_BACKLOG_BYTES);
  txqstats->backlog_bytes = txqi->tin.backlog_bytes;
 }

 if (!(txqstats->filled & BIT(NL80211_TXQ_STATS_BACKLOG_PACKETS))) {
  txqstats->filled |= BIT(NL80211_TXQ_STATS_BACKLOG_PACKETS);
  txqstats->backlog_packets = txqi->tin.backlog_packets;
 }

 if (!(txqstats->filled & BIT(NL80211_TXQ_STATS_FLOWS))) {
  txqstats->filled |= BIT(NL80211_TXQ_STATS_FLOWS);
  txqstats->flows = txqi->tin.flows;
 }

 if (!(txqstats->filled & BIT(NL80211_TXQ_STATS_DROPS))) {
  txqstats->filled |= BIT(NL80211_TXQ_STATS_DROPS);
  txqstats->drops = txqi->cstats.drop_count;
 }

 if (!(txqstats->filled & BIT(NL80211_TXQ_STATS_ECN_MARKS))) {
  txqstats->filled |= BIT(NL80211_TXQ_STATS_ECN_MARKS);
  txqstats->ecn_marks = txqi->cstats.ecn_mark;
 }

 if (!(txqstats->filled & BIT(NL80211_TXQ_STATS_OVERLIMIT))) {
  txqstats->filled |= BIT(NL80211_TXQ_STATS_OVERLIMIT);
  txqstats->overlimit = txqi->tin.overlimit;
 }

 if (!(txqstats->filled & BIT(NL80211_TXQ_STATS_COLLISIONS))) {
  txqstats->filled |= BIT(NL80211_TXQ_STATS_COLLISIONS);
  txqstats->collisions = txqi->tin.collisions;
 }

 if (!(txqstats->filled & BIT(NL80211_TXQ_STATS_TX_BYTES))) {
  txqstats->filled |= BIT(NL80211_TXQ_STATS_TX_BYTES);
  txqstats->tx_bytes = txqi->tin.tx_bytes;
 }

 if (!(txqstats->filled & BIT(NL80211_TXQ_STATS_TX_PACKETS))) {
  txqstats->filled |= BIT(NL80211_TXQ_STATS_TX_PACKETS);
  txqstats->tx_packets = txqi->tin.tx_packets;
 }
}
