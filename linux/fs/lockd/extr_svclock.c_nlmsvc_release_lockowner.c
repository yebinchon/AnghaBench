
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fl_owner; } ;
struct nlm_lock {TYPE_1__ fl; } ;


 int nlmsvc_put_lockowner (scalar_t__) ;

void
nlmsvc_release_lockowner(struct nlm_lock *lock)
{
 if (lock->fl.fl_owner)
  nlmsvc_put_lockowner(lock->fl.fl_owner);
}
