
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcu_struct {int dummy; } ;


 int __synchronize_srcu (struct srcu_struct*,int ) ;
 int rcu_gp_is_normal () ;

void synchronize_srcu_expedited(struct srcu_struct *ssp)
{
 __synchronize_srcu(ssp, rcu_gp_is_normal());
}
