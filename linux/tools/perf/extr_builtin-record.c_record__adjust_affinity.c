
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ affinity; } ;
struct record {int affinity_mask; TYPE_1__ opts; } ;
struct mmap {int affinity_mask; } ;


 int CPU_EQUAL (int *,int *) ;
 int CPU_OR (int *,int *,int *) ;
 int CPU_ZERO (int *) ;
 scalar_t__ PERF_AFFINITY_SYS ;
 int sched_setaffinity (int ,int,int *) ;

__attribute__((used)) static void record__adjust_affinity(struct record *rec, struct mmap *map)
{
 if (rec->opts.affinity != PERF_AFFINITY_SYS &&
     !CPU_EQUAL(&rec->affinity_mask, &map->affinity_mask)) {
  CPU_ZERO(&rec->affinity_mask);
  CPU_OR(&rec->affinity_mask, &rec->affinity_mask, &map->affinity_mask);
  sched_setaffinity(0, sizeof(rec->affinity_mask), &rec->affinity_mask);
 }
}
