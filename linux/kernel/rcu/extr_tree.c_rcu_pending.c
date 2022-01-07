
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rcu_node {int gp_seq; } ;
struct TYPE_3__ {int norm; } ;
struct TYPE_4__ {TYPE_1__ b; } ;
struct rcu_data {scalar_t__ gp_seq; int gpwrap; int cblist; TYPE_2__ cpu_no_qs; scalar_t__ core_needs_qs; struct rcu_node* mynode; } ;


 int CONFIG_RCU_NOCB_CPU ;
 int IS_ENABLED (int ) ;
 int RCU_NEXT_READY_TAIL ;
 int READ_ONCE (int ) ;
 int check_cpu_stall (struct rcu_data*) ;
 int rcu_data ;
 int rcu_gp_in_progress () ;
 scalar_t__ rcu_nocb_need_deferred_wakeup (struct rcu_data*) ;
 scalar_t__ rcu_nohz_full_cpu () ;
 scalar_t__ rcu_segcblist_is_enabled (int *) ;
 int rcu_segcblist_is_offloaded (int *) ;
 scalar_t__ rcu_segcblist_ready_cbs (int *) ;
 int rcu_segcblist_restempty (int *,int ) ;
 scalar_t__ rcu_seq_current (int *) ;
 struct rcu_data* this_cpu_ptr (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int rcu_pending(void)
{
 struct rcu_data *rdp = this_cpu_ptr(&rcu_data);
 struct rcu_node *rnp = rdp->mynode;


 check_cpu_stall(rdp);


 if (rcu_nocb_need_deferred_wakeup(rdp))
  return 1;


 if (rcu_nohz_full_cpu())
  return 0;


 if (rdp->core_needs_qs && !rdp->cpu_no_qs.b.norm)
  return 1;


 if (rcu_segcblist_ready_cbs(&rdp->cblist))
  return 1;


 if (!rcu_gp_in_progress() &&
     rcu_segcblist_is_enabled(&rdp->cblist) &&
     (!IS_ENABLED(CONFIG_RCU_NOCB_CPU) ||
      !rcu_segcblist_is_offloaded(&rdp->cblist)) &&
     !rcu_segcblist_restempty(&rdp->cblist, RCU_NEXT_READY_TAIL))
  return 1;


 if (rcu_seq_current(&rnp->gp_seq) != rdp->gp_seq ||
     unlikely(READ_ONCE(rdp->gpwrap)))
  return 1;


 return 0;
}
