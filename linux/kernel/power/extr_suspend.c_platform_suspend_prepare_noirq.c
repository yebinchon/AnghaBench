
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ suspend_state_t ;
struct TYPE_4__ {int (* prepare_late ) () ;} ;
struct TYPE_3__ {int (* prepare_late ) () ;} ;


 scalar_t__ PM_SUSPEND_TO_IDLE ;
 TYPE_2__* s2idle_ops ;
 int stub1 () ;
 int stub2 () ;
 TYPE_1__* suspend_ops ;

__attribute__((used)) static int platform_suspend_prepare_noirq(suspend_state_t state)
{
 if (state == PM_SUSPEND_TO_IDLE)
  return s2idle_ops && s2idle_ops->prepare_late ?
   s2idle_ops->prepare_late() : 0;

 return suspend_ops->prepare_late ? suspend_ops->prepare_late() : 0;
}
