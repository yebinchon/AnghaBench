
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_lockowner {int dummy; } ;
struct file_lock {scalar_t__ fl_owner; } ;


 int nlmsvc_put_lockowner (struct nlm_lockowner*) ;

__attribute__((used)) static void nlmsvc_locks_release_private(struct file_lock *fl)
{
 nlmsvc_put_lockowner((struct nlm_lockowner *)fl->fl_owner);
}
