
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lockdep_recursion; } ;


 int arch_spin_lock (int *) ;
 int arch_spin_unlock (int *) ;
 TYPE_1__* current ;
 int debug_locks ;
 int lockdep_lock ;

__attribute__((used)) static int graph_lock(void)
{
 arch_spin_lock(&lockdep_lock);






 if (!debug_locks) {
  arch_spin_unlock(&lockdep_lock);
  return 0;
 }

 current->lockdep_recursion++;
 return 1;
}
