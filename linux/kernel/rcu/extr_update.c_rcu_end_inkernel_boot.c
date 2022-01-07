
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WRITE_ONCE (int ,int) ;
 int rcu_normal ;
 scalar_t__ rcu_normal_after_boot ;
 int rcu_unexpedite_gp () ;

void rcu_end_inkernel_boot(void)
{
 rcu_unexpedite_gp();
 if (rcu_normal_after_boot)
  WRITE_ONCE(rcu_normal, 1);
}
