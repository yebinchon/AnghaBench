
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lockdep_map {int dummy; } ;


 int init_data_structures_once () ;
 scalar_t__ inside_selftest () ;
 int lockdep_reset_lock_imm (struct lockdep_map*) ;
 int lockdep_reset_lock_reg (struct lockdep_map*) ;

void lockdep_reset_lock(struct lockdep_map *lock)
{
 init_data_structures_once();

 if (inside_selftest())
  lockdep_reset_lock_imm(lock);
 else
  lockdep_reset_lock_reg(lock);
}
