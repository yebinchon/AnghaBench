
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* finish ) () ;} ;


 int stub1 () ;
 TYPE_1__* ui_progress__ops ;

void ui_progress__finish(void)
{
 if (ui_progress__ops->finish)
  ui_progress__ops->finish();
}
