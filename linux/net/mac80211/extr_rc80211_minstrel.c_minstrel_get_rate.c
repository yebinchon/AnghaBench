
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct minstrel_sta_info {int total_packets; int sample_packets; int sample_deferred; int prev_sample; int n_rates; size_t* max_tp_rate; struct minstrel_rate* r; } ;
struct TYPE_8__ {int sample_skipped; scalar_t__ prob_ewma; } ;
struct minstrel_rate {scalar_t__ perfect_tx_time; scalar_t__ sample_limit; int rix; TYPE_4__ stats; } ;
struct minstrel_priv {int lookaround_rate_mrr; int lookaround_rate; int fixed_rate_idx; TYPE_2__* hw; scalar_t__ has_mrr; } ;
struct ieee80211_tx_rate_control {TYPE_1__* bss_conf; int rts; struct sk_buff* skb; } ;
struct ieee80211_tx_rate {int count; int idx; } ;
struct TYPE_7__ {int flags; struct ieee80211_tx_rate* rates; } ;
struct ieee80211_tx_info {int flags; TYPE_3__ control; } ;
struct ieee80211_sta {int dummy; } ;
struct TYPE_6__ {int max_rates; } ;
struct TYPE_5__ {int use_cts_prot; } ;


 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_RATE_CTRL_PROBE ;
 int IEEE80211_TX_CTRL_PORT_CTRL_PROTO ;
 scalar_t__ MINSTREL_FRAC (int,int) ;
 unsigned int minstrel_get_next_sample (struct minstrel_sta_info*) ;
 int minstrel_get_retry_count (struct minstrel_rate*,struct ieee80211_tx_info*) ;

__attribute__((used)) static void
minstrel_get_rate(void *priv, struct ieee80211_sta *sta,
    void *priv_sta, struct ieee80211_tx_rate_control *txrc)
{
 struct sk_buff *skb = txrc->skb;
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 struct minstrel_sta_info *mi = priv_sta;
 struct minstrel_priv *mp = priv;
 struct ieee80211_tx_rate *rate = &info->control.rates[0];
 struct minstrel_rate *msr, *mr;
 unsigned int ndx;
 bool mrr_capable;
 bool prev_sample;
 int delta;
 int sampling_ratio;


 mrr_capable = mp->has_mrr &&
        !txrc->rts &&
        !txrc->bss_conf->use_cts_prot;
 if (mrr_capable)
  sampling_ratio = mp->lookaround_rate_mrr;
 else
  sampling_ratio = mp->lookaround_rate;


 mi->total_packets++;







 if (mp->hw->max_rates == 1 &&
     (info->control.flags & IEEE80211_TX_CTRL_PORT_CTRL_PROTO))
  return;

 delta = (mi->total_packets * sampling_ratio / 100) -
   (mi->sample_packets + mi->sample_deferred / 2);


 prev_sample = mi->prev_sample;
 mi->prev_sample = 0;
 if (delta < 0 || (!mrr_capable && prev_sample))
  return;

 if (mi->total_packets >= 10000) {
  mi->sample_deferred = 0;
  mi->sample_packets = 0;
  mi->total_packets = 0;
 } else if (delta > mi->n_rates * 2) {
  mi->sample_packets += (delta - mi->n_rates * 2);
 }


 ndx = minstrel_get_next_sample(mi);
 msr = &mi->r[ndx];
 mr = &mi->r[mi->max_tp_rate[0]];





 if (mrr_capable &&
     msr->perfect_tx_time > mr->perfect_tx_time &&
     msr->stats.sample_skipped < 20) {






  info->flags |= IEEE80211_TX_CTL_RATE_CTRL_PROBE;
  rate++;
  mi->sample_deferred++;
 } else {
  if (!msr->sample_limit)
   return;

  mi->sample_packets++;
  if (msr->sample_limit > 0)
   msr->sample_limit--;
 }




 if (!mrr_capable &&
    (mi->r[ndx].stats.prob_ewma > MINSTREL_FRAC(95, 100)))
  return;

 mi->prev_sample = 1;

 rate->idx = mi->r[ndx].rix;
 rate->count = minstrel_get_retry_count(&mi->r[ndx], info);
}
