
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int entry; } ;
struct srcu_struct {int srcu_gp_running; int srcu_gp_waiting; TYPE_1__ srcu_work; scalar_t__ srcu_idx; int * srcu_cb_head; int ** srcu_cb_tail; int srcu_wq; scalar_t__* srcu_lock_nesting; } ;


 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (TYPE_1__*,int ) ;
 int init_swait_queue_head (int *) ;
 int srcu_drive_gp ;

__attribute__((used)) static int init_srcu_struct_fields(struct srcu_struct *ssp)
{
 ssp->srcu_lock_nesting[0] = 0;
 ssp->srcu_lock_nesting[1] = 0;
 init_swait_queue_head(&ssp->srcu_wq);
 ssp->srcu_cb_head = ((void*)0);
 ssp->srcu_cb_tail = &ssp->srcu_cb_head;
 ssp->srcu_gp_running = 0;
 ssp->srcu_gp_waiting = 0;
 ssp->srcu_idx = 0;
 INIT_WORK(&ssp->srcu_work, srcu_drive_gp);
 INIT_LIST_HEAD(&ssp->srcu_work.entry);
 return 0;
}
