
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct branch_type_stat {int cross_4k; int cross_2m; int cond_bwd; int cond_fwd; int * counts; } ;
struct branch_flags {size_t type; } ;


 int AREA_2M ;
 int AREA_4K ;
 size_t PERF_BR_COND ;
 size_t PERF_BR_UNKNOWN ;
 scalar_t__ cross_area (scalar_t__,scalar_t__,int ) ;

void branch_type_count(struct branch_type_stat *st, struct branch_flags *flags,
         u64 from, u64 to)
{
 if (flags->type == PERF_BR_UNKNOWN || from == 0)
  return;

 st->counts[flags->type]++;

 if (flags->type == PERF_BR_COND) {
  if (to > from)
   st->cond_fwd++;
  else
   st->cond_bwd++;
 }

 if (cross_area(from, to, AREA_2M))
  st->cross_2m++;
 else if (cross_area(from, to, AREA_4K))
  st->cross_4k++;
}
