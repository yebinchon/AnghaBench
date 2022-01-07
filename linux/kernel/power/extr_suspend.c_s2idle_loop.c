
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* wake ) () ;} ;


 int pm_pr_dbg (char*) ;
 int pm_wakeup_clear (int) ;
 scalar_t__ pm_wakeup_pending () ;
 int s2idle_enter () ;
 TYPE_1__* s2idle_ops ;
 int stub1 () ;

__attribute__((used)) static void s2idle_loop(void)
{
 pm_pr_dbg("suspend-to-idle\n");
 for (;;) {
  if (s2idle_ops && s2idle_ops->wake)
   s2idle_ops->wake();

  if (pm_wakeup_pending())
   break;

  pm_wakeup_clear(0);

  s2idle_enter();
 }

 pm_pr_dbg("resume from suspend-to-idle\n");
}
