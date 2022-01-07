
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum lockdep_ok { ____Placeholder_lockdep_ok } lockdep_ok ;


 int LOCKDEP_NOW_UNRELIABLE ;
 scalar_t__ __debug_locks_off () ;
 int pr_warn (char*) ;
 int set_bit (unsigned int,int *) ;
 int tainted_mask ;

void add_taint(unsigned flag, enum lockdep_ok lockdep_ok)
{
 if (lockdep_ok == LOCKDEP_NOW_UNRELIABLE && __debug_locks_off())
  pr_warn("Disabling lock debugging due to kernel taint\n");

 set_bit(flag, &tainted_mask);
}
