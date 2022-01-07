
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct compute_stats {int load; int lcl_hitm; int rmt_hitm; } ;
struct c2c_stats {scalar_t__ load; scalar_t__ lcl_hitm; scalar_t__ rmt_hitm; } ;
struct c2c_hist_entry {struct compute_stats cstats; } ;


 int update_stats (int *,int ) ;

__attribute__((used)) static void compute_stats(struct c2c_hist_entry *c2c_he,
     struct c2c_stats *stats,
     u64 weight)
{
 struct compute_stats *cstats = &c2c_he->cstats;

 if (stats->rmt_hitm)
  update_stats(&cstats->rmt_hitm, weight);
 else if (stats->lcl_hitm)
  update_stats(&cstats->lcl_hitm, weight);
 else if (stats->load)
  update_stats(&cstats->load, weight);
}
