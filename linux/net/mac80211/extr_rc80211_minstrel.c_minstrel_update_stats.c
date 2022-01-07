
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct minstrel_sta_info {int n_rates; int* max_tp_rate; size_t max_prob_rate; int last_stats_update; struct minstrel_rate* r; } ;
struct minstrel_rate_stats {scalar_t__ prob_ewma; int retry_count; } ;
struct minstrel_rate {int adjusted_retry_count; int sample_limit; struct minstrel_rate_stats stats; } ;
struct minstrel_priv {int fixed_rate_idx; } ;


 int MAX_THR_RATES ;
 scalar_t__ MINSTREL_FRAC (int,int) ;
 int jiffies ;
 int memcpy (int*,size_t*,int) ;
 int minstrel_calc_rate_stats (struct minstrel_rate_stats*) ;
 int minstrel_get_tp_avg (struct minstrel_rate*,scalar_t__) ;
 int minstrel_sort_best_tp_rates (struct minstrel_sta_info*,int,size_t*) ;
 int minstrel_update_rates (struct minstrel_priv*,struct minstrel_sta_info*) ;

__attribute__((used)) static void
minstrel_update_stats(struct minstrel_priv *mp, struct minstrel_sta_info *mi)
{
 u8 tmp_tp_rate[MAX_THR_RATES];
 u8 tmp_prob_rate = 0;
 int i, tmp_cur_tp, tmp_prob_tp;

 for (i = 0; i < MAX_THR_RATES; i++)
     tmp_tp_rate[i] = 0;

 for (i = 0; i < mi->n_rates; i++) {
  struct minstrel_rate *mr = &mi->r[i];
  struct minstrel_rate_stats *mrs = &mi->r[i].stats;
  struct minstrel_rate_stats *tmp_mrs = &mi->r[tmp_prob_rate].stats;


  minstrel_calc_rate_stats(mrs);



  if (mrs->prob_ewma > MINSTREL_FRAC(95, 100) ||
      mrs->prob_ewma < MINSTREL_FRAC(10, 100)) {
   mr->adjusted_retry_count = mrs->retry_count >> 1;
   if (mr->adjusted_retry_count > 2)
    mr->adjusted_retry_count = 2;
   mr->sample_limit = 4;
  } else {
   mr->sample_limit = -1;
   mr->adjusted_retry_count = mrs->retry_count;
  }
  if (!mr->adjusted_retry_count)
   mr->adjusted_retry_count = 2;

  minstrel_sort_best_tp_rates(mi, i, tmp_tp_rate);







  if (mrs->prob_ewma >= MINSTREL_FRAC(95, 100)) {
   tmp_cur_tp = minstrel_get_tp_avg(mr, mrs->prob_ewma);
   tmp_prob_tp = minstrel_get_tp_avg(&mi->r[tmp_prob_rate],
         tmp_mrs->prob_ewma);
   if (tmp_cur_tp >= tmp_prob_tp)
    tmp_prob_rate = i;
  } else {
   if (mrs->prob_ewma >= tmp_mrs->prob_ewma)
    tmp_prob_rate = i;
  }
 }


 memcpy(mi->max_tp_rate, tmp_tp_rate, sizeof(mi->max_tp_rate));
 mi->max_prob_rate = tmp_prob_rate;
 mi->last_stats_update = jiffies;

 minstrel_update_rates(mp, mi);
}
