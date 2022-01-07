
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcu_struct {int dummy; } ;
struct rcu_synchronize {int head; int completion; } ;


 int call_srcu (struct srcu_struct*,int *,int ) ;
 int destroy_rcu_head_on_stack (int *) ;
 int init_completion (int *) ;
 int init_rcu_head_on_stack (int *) ;
 int wait_for_completion (int *) ;
 int wakeme_after_rcu ;

void synchronize_srcu(struct srcu_struct *ssp)
{
 struct rcu_synchronize rs;

 init_rcu_head_on_stack(&rs.head);
 init_completion(&rs.completion);
 call_srcu(ssp, &rs.head, wakeme_after_rcu);
 wait_for_completion(&rs.completion);
 destroy_rcu_head_on_stack(&rs.head);
}
