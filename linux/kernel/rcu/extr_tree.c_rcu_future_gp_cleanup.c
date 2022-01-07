
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_node {int gp_seq; int gp_seq_needed; } ;
struct rcu_data {int dummy; } ;


 int TPS (char*) ;
 int ULONG_CMP_LT (int ,int ) ;
 int rcu_data ;
 struct rcu_data* this_cpu_ptr (int *) ;
 int trace_rcu_this_gp (struct rcu_node*,struct rcu_data*,int ,int ) ;

__attribute__((used)) static bool rcu_future_gp_cleanup(struct rcu_node *rnp)
{
 bool needmore;
 struct rcu_data *rdp = this_cpu_ptr(&rcu_data);

 needmore = ULONG_CMP_LT(rnp->gp_seq, rnp->gp_seq_needed);
 if (!needmore)
  rnp->gp_seq_needed = rnp->gp_seq;
 trace_rcu_this_gp(rnp, rdp, rnp->gp_seq,
     needmore ? TPS("CleanupMore") : TPS("Cleanup"));
 return needmore;
}
