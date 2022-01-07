
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
typedef int tmp_mcs_tp_rate ;
typedef int tmp_cck_tp_rate ;
struct minstrel_rate_stats {int retry_updated; int prob_ewma; } ;
struct minstrel_priv {int sample_switch; int fixed_rate_idx; int hw; } ;
struct minstrel_mcs_group_data {int* max_group_tp_rate; struct minstrel_rate_stats* rates; } ;
struct minstrel_ht_sta {scalar_t__ total_packets_cur; scalar_t__ total_packets; scalar_t__ total_packets_last; scalar_t__ ampdu_packets; int sample_count; int* supported; int* max_tp_rate; int max_prob_rate; int last_stats_update; void* sample_mode; struct minstrel_mcs_group_data* groups; scalar_t__ sample_slow; scalar_t__ ampdu_len; scalar_t__ avg_ampdu_len; } ;


 int ARRAY_SIZE (size_t*) ;
 int BIT (int) ;
 int EWMA_LEVEL ;
 int MAX_THR_RATES ;
 size_t MCS_GROUP_RATES ;
 size_t MINSTREL_CCK_GROUP ;
 int MINSTREL_FRAC (scalar_t__,scalar_t__) ;
 size_t MINSTREL_HT_GROUP_0 ;
 void* MINSTREL_SAMPLE_IDLE ;
 size_t MINSTREL_VHT_GROUP_0 ;
 scalar_t__ SAMPLE_SWITCH_THR ;
 int TX_STATUS_NO_AMPDU_LEN ;
 int ieee80211_hw_check (int ,int ) ;
 int jiffies ;
 int memcpy (int*,size_t*,int) ;
 int memset (size_t*,int ,int) ;
 int minstrel_calc_rate_stats (struct minstrel_rate_stats*) ;
 scalar_t__ minstrel_ewma (scalar_t__,int ,int ) ;
 int minstrel_ht_assign_best_tp_rates (struct minstrel_ht_sta*,size_t*,size_t*) ;
 scalar_t__ minstrel_ht_get_tp_avg (struct minstrel_ht_sta*,int,int,int) ;
 int minstrel_ht_prob_rate_reduce_streams (struct minstrel_ht_sta*) ;
 int minstrel_ht_rate_sample_switch (struct minstrel_priv*,struct minstrel_ht_sta*) ;
 int minstrel_ht_set_best_prob_rate (struct minstrel_ht_sta*,size_t) ;
 int minstrel_ht_sort_best_tp_rates (struct minstrel_ht_sta*,size_t,size_t*) ;
 size_t* minstrel_mcs_groups ;

__attribute__((used)) static void
minstrel_ht_update_stats(struct minstrel_priv *mp, struct minstrel_ht_sta *mi,
    bool sample)
{
 struct minstrel_mcs_group_data *mg;
 struct minstrel_rate_stats *mrs;
 int group, i, j, cur_prob;
 u16 tmp_mcs_tp_rate[MAX_THR_RATES], tmp_group_tp_rate[MAX_THR_RATES];
 u16 tmp_cck_tp_rate[MAX_THR_RATES], index;

 mi->sample_mode = MINSTREL_SAMPLE_IDLE;

 if (sample) {
  mi->total_packets_cur = mi->total_packets -
     mi->total_packets_last;
  mi->total_packets_last = mi->total_packets;
 }
 if (!mp->sample_switch)
  sample = 0;
 if (mi->total_packets_cur < SAMPLE_SWITCH_THR && mp->sample_switch != 1)
     sample = 0;

 if (mi->ampdu_packets > 0) {
  if (!ieee80211_hw_check(mp->hw, TX_STATUS_NO_AMPDU_LEN))
   mi->avg_ampdu_len = minstrel_ewma(mi->avg_ampdu_len,
    MINSTREL_FRAC(mi->ampdu_len, mi->ampdu_packets),
           EWMA_LEVEL);
  else
   mi->avg_ampdu_len = 0;
  mi->ampdu_len = 0;
  mi->ampdu_packets = 0;
 }

 mi->sample_slow = 0;
 mi->sample_count = 0;

 memset(tmp_mcs_tp_rate, 0, sizeof(tmp_mcs_tp_rate));
 memset(tmp_cck_tp_rate, 0, sizeof(tmp_cck_tp_rate));
 if (mi->supported[MINSTREL_CCK_GROUP])
  for (j = 0; j < ARRAY_SIZE(tmp_cck_tp_rate); j++)
   tmp_cck_tp_rate[j] = MINSTREL_CCK_GROUP * MCS_GROUP_RATES;

 if (mi->supported[MINSTREL_VHT_GROUP_0])
  index = MINSTREL_VHT_GROUP_0 * MCS_GROUP_RATES;
 else
  index = MINSTREL_HT_GROUP_0 * MCS_GROUP_RATES;

 for (j = 0; j < ARRAY_SIZE(tmp_mcs_tp_rate); j++)
  tmp_mcs_tp_rate[j] = index;


 for (group = 0; group < ARRAY_SIZE(minstrel_mcs_groups); group++) {

  mg = &mi->groups[group];
  if (!mi->supported[group])
   continue;

  mi->sample_count++;


  for(j = 0; j < MAX_THR_RATES; j++)
   tmp_group_tp_rate[j] = MCS_GROUP_RATES * group;

  for (i = 0; i < MCS_GROUP_RATES; i++) {
   if (!(mi->supported[group] & BIT(i)))
    continue;

   index = MCS_GROUP_RATES * group + i;

   mrs = &mg->rates[i];
   mrs->retry_updated = 0;
   minstrel_calc_rate_stats(mrs);
   cur_prob = mrs->prob_ewma;

   if (minstrel_ht_get_tp_avg(mi, group, i, cur_prob) == 0)
    continue;


   if (group != MINSTREL_CCK_GROUP) {
    minstrel_ht_sort_best_tp_rates(mi, index,
              tmp_mcs_tp_rate);
   } else if (group == MINSTREL_CCK_GROUP) {
    minstrel_ht_sort_best_tp_rates(mi, index,
              tmp_cck_tp_rate);
   }


   minstrel_ht_sort_best_tp_rates(mi, index,
             tmp_group_tp_rate);


   minstrel_ht_set_best_prob_rate(mi, index);
  }

  memcpy(mg->max_group_tp_rate, tmp_group_tp_rate,
         sizeof(mg->max_group_tp_rate));
 }


 minstrel_ht_assign_best_tp_rates(mi, tmp_mcs_tp_rate, tmp_cck_tp_rate);
 memcpy(mi->max_tp_rate, tmp_mcs_tp_rate, sizeof(mi->max_tp_rate));


 minstrel_ht_prob_rate_reduce_streams(mi);


 mi->sample_count *= 8;

 if (sample)
  minstrel_ht_rate_sample_switch(mp, mi);
 mi->last_stats_update = jiffies;
}
