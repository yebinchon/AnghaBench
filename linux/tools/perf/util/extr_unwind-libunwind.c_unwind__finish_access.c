
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct map_groups {TYPE_1__* unwind_libunwind_ops; } ;
struct TYPE_2__ {int (* finish_access ) (struct map_groups*) ;} ;


 int stub1 (struct map_groups*) ;

void unwind__finish_access(struct map_groups *mg)
{
 if (mg->unwind_libunwind_ops)
  mg->unwind_libunwind_ops->finish_access(mg);
}
