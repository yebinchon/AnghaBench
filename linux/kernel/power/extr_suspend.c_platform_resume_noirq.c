
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ suspend_state_t ;
struct TYPE_4__ {int (* restore_early ) () ;} ;
struct TYPE_3__ {int (* wake ) () ;} ;


 scalar_t__ PM_SUSPEND_TO_IDLE ;
 TYPE_2__* s2idle_ops ;
 int stub1 () ;
 int stub2 () ;
 TYPE_1__* suspend_ops ;

__attribute__((used)) static void platform_resume_noirq(suspend_state_t state)
{
 if (state == PM_SUSPEND_TO_IDLE) {
  if (s2idle_ops && s2idle_ops->restore_early)
   s2idle_ops->restore_early();
 } else if (suspend_ops->wake) {
  suspend_ops->wake();
 }
}
