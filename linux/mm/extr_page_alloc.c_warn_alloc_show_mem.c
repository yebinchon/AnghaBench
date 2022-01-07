
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nodemask_t ;
typedef int gfp_t ;
struct TYPE_3__ {int flags; } ;


 int PF_EXITING ;
 int PF_MEMALLOC ;
 unsigned int SHOW_MEM_FILTER_NODES ;
 int __GFP_DIRECT_RECLAIM ;
 int __GFP_NOMEMALLOC ;
 TYPE_1__* current ;
 scalar_t__ in_interrupt () ;
 int show_mem (unsigned int,int *) ;
 scalar_t__ tsk_is_oom_victim (TYPE_1__*) ;

__attribute__((used)) static void warn_alloc_show_mem(gfp_t gfp_mask, nodemask_t *nodemask)
{
 unsigned int filter = SHOW_MEM_FILTER_NODES;






 if (!(gfp_mask & __GFP_NOMEMALLOC))
  if (tsk_is_oom_victim(current) ||
      (current->flags & (PF_MEMALLOC | PF_EXITING)))
   filter &= ~SHOW_MEM_FILTER_NODES;
 if (in_interrupt() || !(gfp_mask & __GFP_DIRECT_RECLAIM))
  filter &= ~SHOW_MEM_FILTER_NODES;

 show_mem(filter, nodemask);
}
