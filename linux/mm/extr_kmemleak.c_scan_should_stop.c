
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mm; } ;


 TYPE_1__* current ;
 int kmemleak_enabled ;
 int kthread_should_stop () ;
 int signal_pending (TYPE_1__*) ;

__attribute__((used)) static int scan_should_stop(void)
{
 if (!kmemleak_enabled)
  return 1;





 if (current->mm)
  return signal_pending(current);
 else
  return kthread_should_stop();

 return 0;
}
