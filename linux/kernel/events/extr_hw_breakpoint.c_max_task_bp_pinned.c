
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum bp_type_idx { ____Placeholder_bp_type_idx } bp_type_idx ;
struct TYPE_2__ {unsigned int* tsk_pinned; } ;


 TYPE_1__* get_bp_info (int,int) ;
 int* nr_slots ;

__attribute__((used)) static unsigned int max_task_bp_pinned(int cpu, enum bp_type_idx type)
{
 unsigned int *tsk_pinned = get_bp_info(cpu, type)->tsk_pinned;
 int i;

 for (i = nr_slots[type] - 1; i >= 0; i--) {
  if (tsk_pinned[i] > 0)
   return i + 1;
 }

 return 0;
}
