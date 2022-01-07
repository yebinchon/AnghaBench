
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_sample {TYPE_1__* branch_stack; } ;
struct hist_entry_iter {struct branch_info* priv; int total; scalar_t__ curr; struct perf_sample* sample; } ;
struct branch_info {int dummy; } ;
struct addr_location {int dummy; } ;
struct TYPE_2__ {int nr; } ;


 int ENOMEM ;
 struct branch_info* sample__resolve_bstack (struct perf_sample*,struct addr_location*) ;

__attribute__((used)) static int
iter_prepare_branch_entry(struct hist_entry_iter *iter, struct addr_location *al)
{
 struct branch_info *bi;
 struct perf_sample *sample = iter->sample;

 bi = sample__resolve_bstack(sample, al);
 if (!bi)
  return -ENOMEM;

 iter->curr = 0;
 iter->total = sample->branch_stack->nr;

 iter->priv = bi;
 return 0;
}
