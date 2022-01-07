
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int fl_flags; } ;


 int FL_DELEG ;
 int FL_LAYOUT ;
 int FL_LEASE ;
 int locks_conflict (struct file_lock*,struct file_lock*) ;
 int trace_leases_conflict (int,struct file_lock*,struct file_lock*) ;

__attribute__((used)) static bool leases_conflict(struct file_lock *lease, struct file_lock *breaker)
{
 bool rc;

 if ((breaker->fl_flags & FL_LAYOUT) != (lease->fl_flags & FL_LAYOUT)) {
  rc = 0;
  goto trace;
 }
 if ((breaker->fl_flags & FL_DELEG) && (lease->fl_flags & FL_LEASE)) {
  rc = 0;
  goto trace;
 }

 rc = locks_conflict(breaker, lease);
trace:
 trace_leases_conflict(rc, lease, breaker);
 return rc;
}
