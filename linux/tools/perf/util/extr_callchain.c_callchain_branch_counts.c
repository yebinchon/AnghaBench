
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct callchain_root {int node; } ;


 int callchain_node_branch_counts_cumul (int *,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;

int callchain_branch_counts(struct callchain_root *root,
       u64 *branch_count, u64 *predicted_count,
       u64 *abort_count, u64 *cycles_count)
{
 if (branch_count)
  *branch_count = 0;

 if (predicted_count)
  *predicted_count = 0;

 if (abort_count)
  *abort_count = 0;

 if (cycles_count)
  *cycles_count = 0;

 return callchain_node_branch_counts_cumul(&root->node,
        branch_count,
        predicted_count,
        abort_count,
        cycles_count);
}
