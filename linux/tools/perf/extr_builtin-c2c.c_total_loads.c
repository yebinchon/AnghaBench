
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct c2c_stats {scalar_t__ lcl_hitm; scalar_t__ ld_llchit; scalar_t__ ld_l2hit; scalar_t__ ld_l1hit; scalar_t__ ld_fbhit; scalar_t__ rmt_hit; scalar_t__ rmt_hitm; scalar_t__ rmt_dram; scalar_t__ lcl_dram; } ;



__attribute__((used)) static uint64_t total_loads(struct c2c_stats *stats)
{
 uint64_t lclmiss, ldcnt;

 lclmiss = stats->lcl_dram +
     stats->rmt_dram +
     stats->rmt_hitm +
     stats->rmt_hit;

 ldcnt = lclmiss +
     stats->ld_fbhit +
     stats->ld_l1hit +
     stats->ld_l2hit +
     stats->ld_llchit +
     stats->lcl_hitm;

 return ldcnt;
}
