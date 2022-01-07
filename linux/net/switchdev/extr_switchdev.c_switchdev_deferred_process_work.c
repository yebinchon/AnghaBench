
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int rtnl_lock () ;
 int rtnl_unlock () ;
 int switchdev_deferred_process () ;

__attribute__((used)) static void switchdev_deferred_process_work(struct work_struct *work)
{
 rtnl_lock();
 switchdev_deferred_process();
 rtnl_unlock();
}
