
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct c2c_stats {scalar_t__ rmt_hit; scalar_t__ rmt_hitm; scalar_t__ rmt_dram; scalar_t__ lcl_dram; } ;



__attribute__((used)) static uint64_t llc_miss(struct c2c_stats *stats)
{
 uint64_t llcmiss;

 llcmiss = stats->lcl_dram +
    stats->rmt_dram +
    stats->rmt_hitm +
    stats->rmt_hit;

 return llcmiss;
}
