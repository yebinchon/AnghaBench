
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fr_state; } ;
struct TYPE_5__ {TYPE_1__ frmr; } ;
struct rds_ib_mr {TYPE_3__* ic; TYPE_2__ u; } ;
typedef enum rds_ib_fr_state { ____Placeholder_rds_ib_fr_state } rds_ib_fr_state ;
struct TYPE_6__ {int i_fastreg_inuse_count; } ;


 int FRMR_IS_INUSE ;
 int atomic_dec (int *) ;
 int cmpxchg (int *,int,int) ;
 int rds_ib_ring_empty_wait ;
 int smp_mb__before_atomic () ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static inline void
rds_transition_frwr_state(struct rds_ib_mr *ibmr,
     enum rds_ib_fr_state old_state,
     enum rds_ib_fr_state new_state)
{
 if (cmpxchg(&ibmr->u.frmr.fr_state,
      old_state, new_state) == old_state &&
     old_state == FRMR_IS_INUSE) {



  smp_mb__before_atomic();
  atomic_dec(&ibmr->ic->i_fastreg_inuse_count);
  if (waitqueue_active(&rds_ib_ring_empty_wait))
   wake_up(&rds_ib_ring_empty_wait);
 }
}
