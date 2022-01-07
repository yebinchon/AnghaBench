
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcu_data {int mynode; int cpu; int gp_seq; int dynticks_snap; } ;
struct TYPE_2__ {int name; } ;


 int TPS (char*) ;
 scalar_t__ rcu_dynticks_in_eqs (int ) ;
 int rcu_dynticks_snap (struct rcu_data*) ;
 int rcu_gpnum_ovf (int ,struct rcu_data*) ;
 TYPE_1__ rcu_state ;
 int trace_rcu_fqs (int ,int ,int ,int ) ;

__attribute__((used)) static int dyntick_save_progress_counter(struct rcu_data *rdp)
{
 rdp->dynticks_snap = rcu_dynticks_snap(rdp);
 if (rcu_dynticks_in_eqs(rdp->dynticks_snap)) {
  trace_rcu_fqs(rcu_state.name, rdp->gp_seq, rdp->cpu, TPS("dti"));
  rcu_gpnum_ovf(rdp->mynode, rdp);
  return 1;
 }
 return 0;
}
