
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PM_SUSPEND_ON ;
 scalar_t__ autosleep_state ;
 int autosleep_wq ;
 int queue_work (int ,int *) ;
 int suspend_work ;

void queue_up_suspend_work(void)
{
 if (autosleep_state > PM_SUSPEND_ON)
  queue_work(autosleep_wq, &suspend_work);
}
