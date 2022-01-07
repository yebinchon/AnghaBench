
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcu_head {int dummy; } ;
struct TYPE_2__ {int barrier_sequence; int barrier_completion; int barrier_cpu_count; } ;


 int TPS (char*) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int complete (int *) ;
 int rcu_barrier_trace (int ,int,int ) ;
 TYPE_1__ rcu_state ;

__attribute__((used)) static void rcu_barrier_callback(struct rcu_head *rhp)
{
 if (atomic_dec_and_test(&rcu_state.barrier_cpu_count)) {
  rcu_barrier_trace(TPS("LastCB"), -1,
       rcu_state.barrier_sequence);
  complete(&rcu_state.barrier_completion);
 } else {
  rcu_barrier_trace(TPS("CB"), -1, rcu_state.barrier_sequence);
 }
}
