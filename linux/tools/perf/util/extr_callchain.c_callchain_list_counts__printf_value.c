
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct callchain_list {int brtype_stat; int from_count; int iter_cycles; int iter_count; int cycles_count; int abort_count; int predicted_count; int branch_count; } ;
typedef int FILE ;


 int callchain_counts_printf (int *,char*,int,int ,int ,int ,int ,int ,int ,int ,int *) ;

int callchain_list_counts__printf_value(struct callchain_list *clist,
     FILE *fp, char *bf, int bfsize)
{
 u64 branch_count, predicted_count;
 u64 abort_count, cycles_count;
 u64 iter_count, iter_cycles;
 u64 from_count;

 branch_count = clist->branch_count;
 predicted_count = clist->predicted_count;
 abort_count = clist->abort_count;
 cycles_count = clist->cycles_count;
 iter_count = clist->iter_count;
 iter_cycles = clist->iter_cycles;
 from_count = clist->from_count;

 return callchain_counts_printf(fp, bf, bfsize, branch_count,
           predicted_count, abort_count,
           cycles_count, iter_count, iter_cycles,
           from_count, &clist->brtype_stat);
}
