
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ suspend_state_t ;
struct TYPE_4__ {int (* begin ) () ;} ;
struct TYPE_3__ {int (* begin ) (scalar_t__) ;} ;


 scalar_t__ PM_SUSPEND_TO_IDLE ;
 TYPE_2__* s2idle_ops ;
 int stub1 () ;
 int stub2 (scalar_t__) ;
 TYPE_1__* suspend_ops ;

__attribute__((used)) static int platform_suspend_begin(suspend_state_t state)
{
 if (state == PM_SUSPEND_TO_IDLE && s2idle_ops && s2idle_ops->begin)
  return s2idle_ops->begin();
 else if (suspend_ops && suspend_ops->begin)
  return suspend_ops->begin(state);
 else
  return 0;
}
