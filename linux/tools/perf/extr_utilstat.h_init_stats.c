
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct stats {double n; double mean; double M2; scalar_t__ max; scalar_t__ min; } ;



__attribute__((used)) static inline void init_stats(struct stats *stats)
{
 stats->n = 0.0;
 stats->mean = 0.0;
 stats->M2 = 0.0;
 stats->min = (u64) -1;
 stats->max = 0;
}
