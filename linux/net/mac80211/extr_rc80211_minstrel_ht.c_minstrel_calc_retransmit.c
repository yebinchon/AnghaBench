
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minstrel_rate_stats {scalar_t__ prob_ewma; int retry_count; int retry_count_rtscts; int retry_updated; } ;
struct minstrel_priv {unsigned int cw_min; unsigned int segment_size; int max_retry; int cw_max; } ;
struct minstrel_ht_sta {unsigned int overhead; unsigned int overhead_rtscts; } ;


 int MCS_GROUP_RATES ;
 int MINSTREL_CCK_GROUP ;
 scalar_t__ MINSTREL_FRAC (int,int) ;
 unsigned int min (unsigned int,int ) ;
 unsigned int minstrel_get_duration (int) ;
 struct minstrel_rate_stats* minstrel_get_ratestats (struct minstrel_ht_sta*,int) ;
 unsigned int minstrel_ht_avg_ampdu_len (struct minstrel_ht_sta*) ;

__attribute__((used)) static void
minstrel_calc_retransmit(struct minstrel_priv *mp, struct minstrel_ht_sta *mi,
                         int index)
{
 struct minstrel_rate_stats *mrs;
 unsigned int tx_time, tx_time_rtscts, tx_time_data;
 unsigned int cw = mp->cw_min;
 unsigned int ctime = 0;
 unsigned int t_slot = 9;
 unsigned int ampdu_len = minstrel_ht_avg_ampdu_len(mi);
 unsigned int overhead = 0, overhead_rtscts = 0;

 mrs = minstrel_get_ratestats(mi, index);
 if (mrs->prob_ewma < MINSTREL_FRAC(1, 10)) {
  mrs->retry_count = 1;
  mrs->retry_count_rtscts = 1;
  return;
 }

 mrs->retry_count = 2;
 mrs->retry_count_rtscts = 2;
 mrs->retry_updated = 1;

 tx_time_data = minstrel_get_duration(index) * ampdu_len / 1000;


 ctime = (t_slot * cw) >> 1;
 cw = min((cw << 1) | 1, mp->cw_max);
 ctime += (t_slot * cw) >> 1;
 cw = min((cw << 1) | 1, mp->cw_max);

 if (index / MCS_GROUP_RATES != MINSTREL_CCK_GROUP) {
  overhead = mi->overhead;
  overhead_rtscts = mi->overhead_rtscts;
 }


 tx_time = ctime + 2 * (overhead + tx_time_data);
 tx_time_rtscts = ctime + 2 * (overhead_rtscts + tx_time_data);


 do {

  ctime = (t_slot * cw) >> 1;
  cw = min((cw << 1) | 1, mp->cw_max);


  tx_time += ctime + overhead + tx_time_data;
  tx_time_rtscts += ctime + overhead_rtscts + tx_time_data;

  if (tx_time_rtscts < mp->segment_size)
   mrs->retry_count_rtscts++;
 } while ((tx_time < mp->segment_size) &&
          (++mrs->retry_count < mp->max_retry));
}
