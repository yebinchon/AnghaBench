
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_PROVE_RCU ;
 int IS_ENABLED (int ) ;
 int synchronize_rcu () ;
 int synchronize_rcu_expedited () ;

void rcu_test_sync_prims(void)
{
 if (!IS_ENABLED(CONFIG_PROVE_RCU))
  return;
 synchronize_rcu();
 synchronize_rcu_expedited();
}
