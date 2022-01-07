
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct minstrel_sta_info {int* max_tp_rate; TYPE_1__* r; } ;
struct minstrel_rate_stats {int prob_ewma; } ;
struct TYPE_2__ {struct minstrel_rate_stats stats; } ;


 int minstrel_get_tp_avg (TYPE_1__*,int ) ;

__attribute__((used)) static u32 minstrel_get_expected_throughput(void *priv_sta)
{
 struct minstrel_sta_info *mi = priv_sta;
 struct minstrel_rate_stats *tmp_mrs;
 int idx = mi->max_tp_rate[0];
 int tmp_cur_tp;




 tmp_mrs = &mi->r[idx].stats;
 tmp_cur_tp = minstrel_get_tp_avg(&mi->r[idx], tmp_mrs->prob_ewma) * 10;
 tmp_cur_tp = tmp_cur_tp * 1200 * 8 / 1024;

 return tmp_cur_tp;
}
