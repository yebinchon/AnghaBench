
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double u64 ;
struct stats {double n; double mean; double M2; double max; double min; } ;



void update_stats(struct stats *stats, u64 val)
{
 double delta;

 stats->n++;
 delta = val - stats->mean;
 stats->mean += delta / stats->n;
 stats->M2 += delta*(val - stats->mean);

 if (val > stats->max)
  stats->max = val;

 if (val < stats->min)
  stats->min = val;
}
