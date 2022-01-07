
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcu_node {int grphi; int grplo; int level; int gp_seq; } ;
struct rcu_data {int dummy; } ;
struct TYPE_2__ {int name; } ;


 TYPE_1__ rcu_state ;
 int trace_rcu_future_grace_period (int ,int ,unsigned long,int ,int ,int ,char const*) ;

__attribute__((used)) static void trace_rcu_this_gp(struct rcu_node *rnp, struct rcu_data *rdp,
         unsigned long gp_seq_req, const char *s)
{
 trace_rcu_future_grace_period(rcu_state.name, rnp->gp_seq, gp_seq_req,
          rnp->level, rnp->grplo, rnp->grphi, s);
}
