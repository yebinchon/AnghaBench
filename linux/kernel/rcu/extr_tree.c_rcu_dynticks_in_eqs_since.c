
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_data {int dummy; } ;


 int rcu_dynticks_snap (struct rcu_data*) ;

__attribute__((used)) static bool rcu_dynticks_in_eqs_since(struct rcu_data *rdp, int snap)
{
 return snap != rcu_dynticks_snap(rdp);
}
