
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcu_struct {int* srcu_lock_nesting; int srcu_wq; int srcu_gp_waiting; } ;


 scalar_t__ READ_ONCE (int ) ;
 int WRITE_ONCE (int,int) ;
 int swake_up_one (int *) ;

void __srcu_read_unlock(struct srcu_struct *ssp, int idx)
{
 int newval = ssp->srcu_lock_nesting[idx] - 1;

 WRITE_ONCE(ssp->srcu_lock_nesting[idx], newval);
 if (!newval && READ_ONCE(ssp->srcu_gp_waiting))
  swake_up_one(&ssp->srcu_wq);
}
