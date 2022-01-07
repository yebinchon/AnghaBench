
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int __linkwatch_run_queue (int ) ;
 int jiffies ;
 int linkwatch_nextevent ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int time_after (int ,int ) ;

__attribute__((used)) static void linkwatch_event(struct work_struct *dummy)
{
 rtnl_lock();
 __linkwatch_run_queue(time_after(linkwatch_nextevent, jiffies));
 rtnl_unlock();
}
