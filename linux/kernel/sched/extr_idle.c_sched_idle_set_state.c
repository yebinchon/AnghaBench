
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_state {int dummy; } ;


 int idle_set_state (int ,struct cpuidle_state*) ;
 int this_rq () ;

void sched_idle_set_state(struct cpuidle_state *idle_state)
{
 idle_set_state(this_rq(), idle_state);
}
