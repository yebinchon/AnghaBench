
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_sample {int dummy; } ;
struct branch_stack {int nr; } ;
struct addr_map_symbol {int dummy; } ;
struct branch_info {struct addr_map_symbol to; int flags; int from; } ;
struct addr_location {int dummy; } ;


 int free (struct branch_info*) ;
 int process_basic_block (struct addr_map_symbol*,int *,int *) ;
 struct branch_info* sample__resolve_bstack (struct perf_sample*,struct addr_location*) ;

__attribute__((used)) static void process_branch_stack(struct branch_stack *bs, struct addr_location *al,
     struct perf_sample *sample)
{
 struct addr_map_symbol *prev = ((void*)0);
 struct branch_info *bi;
 int i;

 if (!bs || !bs->nr)
  return;

 bi = sample__resolve_bstack(sample, al);
 if (!bi)
  return;

 for (i = bs->nr - 1; i >= 0; i--) {



  if (prev)
   process_basic_block(prev, &bi[i].from, &bi[i].flags);
  prev = &bi[i].to;
 }

 free(bi);
}
