
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ suspend_state_t ;
struct TYPE_2__ {int (* recover ) () ;} ;


 scalar_t__ PM_SUSPEND_TO_IDLE ;
 int stub1 () ;
 TYPE_1__* suspend_ops ;

__attribute__((used)) static void platform_recover(suspend_state_t state)
{
 if (state != PM_SUSPEND_TO_IDLE && suspend_ops->recover)
  suspend_ops->recover();
}
