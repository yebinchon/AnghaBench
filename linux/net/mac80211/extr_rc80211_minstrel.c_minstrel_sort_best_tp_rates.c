
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct minstrel_sta_info {TYPE_1__* r; } ;
struct minstrel_rate_stats {int prob_ewma; } ;
struct TYPE_2__ {struct minstrel_rate_stats stats; } ;


 int MAX_THR_RATES ;
 int memmove (size_t*,size_t*,int) ;
 scalar_t__ minstrel_get_tp_avg (TYPE_1__*,int ) ;

__attribute__((used)) static inline void
minstrel_sort_best_tp_rates(struct minstrel_sta_info *mi, int i, u8 *tp_list)
{
 int j;
 struct minstrel_rate_stats *tmp_mrs;
 struct minstrel_rate_stats *cur_mrs = &mi->r[i].stats;

 for (j = MAX_THR_RATES; j > 0; --j) {
  tmp_mrs = &mi->r[tp_list[j - 1]].stats;
  if (minstrel_get_tp_avg(&mi->r[i], cur_mrs->prob_ewma) <=
      minstrel_get_tp_avg(&mi->r[tp_list[j - 1]], tmp_mrs->prob_ewma))
   break;
 }

 if (j < MAX_THR_RATES - 1)
  memmove(&tp_list[j + 1], &tp_list[j], MAX_THR_RATES - (j + 1));
 if (j < MAX_THR_RATES)
  tp_list[j] = i;
}
