
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_sample {struct branch_stack* branch_stack; } ;
struct branch_stack {unsigned int nr; TYPE_1__* entries; } ;
struct branch_info {int flags; int from; int to; } ;
struct addr_location {int thread; } ;
struct TYPE_2__ {int flags; int from; int to; } ;


 struct branch_info* calloc (unsigned int,int) ;
 int ip__resolve_ams (int ,int *,int ) ;

struct branch_info *sample__resolve_bstack(struct perf_sample *sample,
        struct addr_location *al)
{
 unsigned int i;
 const struct branch_stack *bs = sample->branch_stack;
 struct branch_info *bi = calloc(bs->nr, sizeof(struct branch_info));

 if (!bi)
  return ((void*)0);

 for (i = 0; i < bs->nr; i++) {
  ip__resolve_ams(al->thread, &bi[i].to, bs->entries[i].to);
  ip__resolve_ams(al->thread, &bi[i].from, bs->entries[i].from);
  bi[i].flags = bs->entries[i].flags;
 }
 return bi;
}
