
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ suspend_state_t ;
struct TYPE_2__ {int (* restore ) () ;} ;


 scalar_t__ PM_SUSPEND_TO_IDLE ;
 TYPE_1__* s2idle_ops ;
 int stub1 () ;

__attribute__((used)) static void platform_resume_early(suspend_state_t state)
{
 if (state == PM_SUSPEND_TO_IDLE && s2idle_ops && s2idle_ops->restore)
  s2idle_ops->restore();
}
