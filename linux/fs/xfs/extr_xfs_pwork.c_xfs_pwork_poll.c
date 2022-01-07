
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_pwork_ctl {int nr_work; int poll_wait; } ;


 int HZ ;
 scalar_t__ atomic_read (int *) ;
 int touch_softlockup_watchdog () ;
 scalar_t__ wait_event_timeout (int ,int,int ) ;

void
xfs_pwork_poll(
 struct xfs_pwork_ctl *pctl)
{
 while (wait_event_timeout(pctl->poll_wait,
    atomic_read(&pctl->nr_work) == 0, HZ) == 0)
  touch_softlockup_watchdog();
}
