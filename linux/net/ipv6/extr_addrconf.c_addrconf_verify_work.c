
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int addrconf_verify_rtnl () ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static void addrconf_verify_work(struct work_struct *w)
{
 rtnl_lock();
 addrconf_verify_rtnl();
 rtnl_unlock();
}
