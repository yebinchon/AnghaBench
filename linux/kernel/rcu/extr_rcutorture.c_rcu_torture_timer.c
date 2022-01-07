
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct rcu_head {int dummy; } ;
struct TYPE_2__ {int (* call ) (struct rcu_head*,int ) ;} ;


 int GFP_NOWAIT ;
 int atomic_long_inc (int *) ;
 TYPE_1__* cur_ops ;
 struct rcu_head* kmalloc (int,int ) ;
 int n_rcu_torture_timers ;
 int rcu_torture_one_read (int ) ;
 int rcu_torture_timer_cb ;
 int rcu_torture_timer_rand ;
 int stub1 (struct rcu_head*,int ) ;
 int this_cpu_ptr (int *) ;

__attribute__((used)) static void rcu_torture_timer(struct timer_list *unused)
{
 atomic_long_inc(&n_rcu_torture_timers);
 (void)rcu_torture_one_read(this_cpu_ptr(&rcu_torture_timer_rand));


 if (cur_ops->call) {
  struct rcu_head *rhp = kmalloc(sizeof(*rhp), GFP_NOWAIT);

  if (rhp)
   cur_ops->call(rhp, rcu_torture_timer_cb);
 }
}
