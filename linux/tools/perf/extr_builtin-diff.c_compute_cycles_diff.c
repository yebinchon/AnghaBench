
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int computed; int cycles; } ;
struct hist_entry {TYPE_1__* block_info; TYPE_2__ diff; } ;
struct TYPE_3__ {int cycles_aggr; int num_aggr; scalar_t__ num; } ;



__attribute__((used)) static void compute_cycles_diff(struct hist_entry *he,
    struct hist_entry *pair)
{
 pair->diff.computed = 1;
 if (pair->block_info->num && he->block_info->num) {
  pair->diff.cycles =
   pair->block_info->cycles_aggr / pair->block_info->num_aggr -
   he->block_info->cycles_aggr / he->block_info->num_aggr;
 }
}
