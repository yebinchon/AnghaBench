
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct perf_sample {int dummy; } ;
struct branch_stack {int nr; TYPE_3__* entries; } ;
struct addr_map_symbol {int dummy; } ;
struct TYPE_4__ {int cycles; } ;
struct branch_info {struct addr_map_symbol to; TYPE_1__ flags; int from; } ;
struct addr_location {int dummy; } ;
struct TYPE_5__ {scalar_t__ cycles; } ;
struct TYPE_6__ {TYPE_2__ flags; } ;


 int addr_map_symbol__account_cycles (int *,struct addr_map_symbol*,int ) ;
 int free (struct branch_info*) ;
 struct branch_info* sample__resolve_bstack (struct perf_sample*,struct addr_location*) ;

void hist__account_cycles(struct branch_stack *bs, struct addr_location *al,
     struct perf_sample *sample, bool nonany_branch_mode)
{
 struct branch_info *bi;


 if (bs && bs->nr && bs->entries[0].flags.cycles) {
  int i;

  bi = sample__resolve_bstack(sample, al);
  if (bi) {
   struct addr_map_symbol *prev = ((void*)0);
   for (i = bs->nr - 1; i >= 0; i--) {
    addr_map_symbol__account_cycles(&bi[i].from,
     nonany_branch_mode ? ((void*)0) : prev,
     bi[i].flags.cycles);
    prev = &bi[i].to;
   }
   free(bi);
  }
 }
}
