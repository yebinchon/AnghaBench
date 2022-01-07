
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcu_struct {int dummy; } ;


 int __synchronize_srcu (struct srcu_struct*,int) ;
 scalar_t__ rcu_gp_is_expedited () ;
 scalar_t__ srcu_might_be_idle (struct srcu_struct*) ;
 int synchronize_srcu_expedited (struct srcu_struct*) ;

void synchronize_srcu(struct srcu_struct *ssp)
{
 if (srcu_might_be_idle(ssp) || rcu_gp_is_expedited())
  synchronize_srcu_expedited(ssp);
 else
  __synchronize_srcu(ssp, 1);
}
