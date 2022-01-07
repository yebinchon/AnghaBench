
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct minstrel_rate_stats {int success; int attempts; } ;
struct minstrel_priv {int update_interval; TYPE_2__* hw; } ;
struct minstrel_ht_sta {int ampdu_len; int sample_wait; int sample_tries; scalar_t__ sample_count; int sample_packets; int sample_mode; scalar_t__ last_stats_update; int * max_tp_rate; int sample_rate; int ampdu_packets; } ;
struct minstrel_ht_sta_priv {int legacy; int is_ht; struct minstrel_ht_sta ht; } ;
struct ieee80211_tx_status {struct ieee80211_tx_info* info; } ;
struct ieee80211_tx_rate {int count; } ;
struct TYPE_4__ {int ampdu_ack_len; int ampdu_len; struct ieee80211_tx_rate* rates; } ;
struct ieee80211_tx_info {int flags; TYPE_1__ status; } ;
struct ieee80211_supported_band {int dummy; } ;
struct TYPE_6__ {void (* tx_status_ext ) (void*,struct ieee80211_supported_band*,int *,struct ieee80211_tx_status*) ;} ;
struct TYPE_5__ {int max_rates; } ;


 int HZ ;
 int IEEE80211_TX_CTL_AMPDU ;
 int IEEE80211_TX_CTL_RATE_CTRL_PROBE ;
 int IEEE80211_TX_MAX_RATES ;
 int IEEE80211_TX_STAT_ACK ;
 int IEEE80211_TX_STAT_AMPDU ;
 scalar_t__ MINSTREL_FRAC (int,int) ;



 int jiffies ;
 TYPE_3__ mac80211_minstrel ;
 int minstrel_downgrade_rate (struct minstrel_ht_sta*,int *,int) ;
 struct minstrel_rate_stats* minstrel_get_ratestats (struct minstrel_ht_sta*,int ) ;
 int minstrel_ht_avg_ampdu_len (struct minstrel_ht_sta*) ;
 struct minstrel_rate_stats* minstrel_ht_get_stats (struct minstrel_priv*,struct minstrel_ht_sta*,struct ieee80211_tx_rate*) ;
 int minstrel_ht_txstat_valid (struct minstrel_priv*,struct ieee80211_tx_rate*) ;
 int minstrel_ht_update_rates (struct minstrel_priv*,struct minstrel_ht_sta*) ;
 int minstrel_ht_update_stats (struct minstrel_priv*,struct minstrel_ht_sta*,int) ;
 void stub1 (void*,struct ieee80211_supported_band*,int *,struct ieee80211_tx_status*) ;
 scalar_t__ time_after (int ,scalar_t__) ;

__attribute__((used)) static void
minstrel_ht_tx_status(void *priv, struct ieee80211_supported_band *sband,
                      void *priv_sta, struct ieee80211_tx_status *st)
{
 struct ieee80211_tx_info *info = st->info;
 struct minstrel_ht_sta_priv *msp = priv_sta;
 struct minstrel_ht_sta *mi = &msp->ht;
 struct ieee80211_tx_rate *ar = info->status.rates;
 struct minstrel_rate_stats *rate, *rate2, *rate_sample = ((void*)0);
 struct minstrel_priv *mp = priv;
 bool last, update = 0;
 bool sample_status = 0;
 int i;

 if (!msp->is_ht)
  return mac80211_minstrel.tx_status_ext(priv, sband,
             &msp->legacy, st);



 if ((info->flags & IEEE80211_TX_CTL_AMPDU) &&
     !(info->flags & IEEE80211_TX_STAT_AMPDU))
  return;

 if (!(info->flags & IEEE80211_TX_STAT_AMPDU)) {
  info->status.ampdu_ack_len =
   (info->flags & IEEE80211_TX_STAT_ACK ? 1 : 0);
  info->status.ampdu_len = 1;
 }

 mi->ampdu_packets++;
 mi->ampdu_len += info->status.ampdu_len;

 if (!mi->sample_wait && !mi->sample_tries && mi->sample_count > 0) {
  int avg_ampdu_len = minstrel_ht_avg_ampdu_len(mi);

  mi->sample_wait = 16 + 2 * avg_ampdu_len;
  mi->sample_tries = 1;
  mi->sample_count--;
 }

 if (info->flags & IEEE80211_TX_CTL_RATE_CTRL_PROBE)
  mi->sample_packets += info->status.ampdu_len;

 if (mi->sample_mode != 129)
  rate_sample = minstrel_get_ratestats(mi, mi->sample_rate);

 last = !minstrel_ht_txstat_valid(mp, &ar[0]);
 for (i = 0; !last; i++) {
  last = (i == IEEE80211_TX_MAX_RATES - 1) ||
         !minstrel_ht_txstat_valid(mp, &ar[i + 1]);

  rate = minstrel_ht_get_stats(mp, mi, &ar[i]);
  if (rate == rate_sample)
   sample_status = 1;

  if (last)
   rate->success += info->status.ampdu_ack_len;

  rate->attempts += ar[i].count * info->status.ampdu_len;
 }

 switch (mi->sample_mode) {
 case 129:
  break;

 case 130:
  if (!sample_status)
   break;

  mi->sample_mode = 128;
  update = 1;
  break;

 case 128:
  if (sample_status)
   break;

  update = 1;
  minstrel_ht_update_stats(mp, mi, 0);
  break;
 }


 if (mp->hw->max_rates > 1) {




  rate = minstrel_get_ratestats(mi, mi->max_tp_rate[0]);
  if (rate->attempts > 30 &&
      MINSTREL_FRAC(rate->success, rate->attempts) <
      MINSTREL_FRAC(20, 100)) {
   minstrel_downgrade_rate(mi, &mi->max_tp_rate[0], 1);
   update = 1;
  }

  rate2 = minstrel_get_ratestats(mi, mi->max_tp_rate[1]);
  if (rate2->attempts > 30 &&
      MINSTREL_FRAC(rate2->success, rate2->attempts) <
      MINSTREL_FRAC(20, 100)) {
   minstrel_downgrade_rate(mi, &mi->max_tp_rate[1], 0);
   update = 1;
  }
 }

 if (time_after(jiffies, mi->last_stats_update +
    (mp->update_interval / 2 * HZ) / 1000)) {
  update = 1;
  minstrel_ht_update_stats(mp, mi, 1);
 }

 if (update)
  minstrel_ht_update_rates(mp, mi);
}
