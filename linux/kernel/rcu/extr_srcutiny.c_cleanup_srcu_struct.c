
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcu_struct {int srcu_gp_running; int srcu_gp_waiting; int srcu_cb_head; int* srcu_cb_tail; int srcu_work; scalar_t__* srcu_lock_nesting; } ;


 int WARN_ON (int) ;
 int flush_work (int *) ;

void cleanup_srcu_struct(struct srcu_struct *ssp)
{
 WARN_ON(ssp->srcu_lock_nesting[0] || ssp->srcu_lock_nesting[1]);
 flush_work(&ssp->srcu_work);
 WARN_ON(ssp->srcu_gp_running);
 WARN_ON(ssp->srcu_gp_waiting);
 WARN_ON(ssp->srcu_cb_head);
 WARN_ON(&ssp->srcu_cb_head != ssp->srcu_cb_tail);
}
