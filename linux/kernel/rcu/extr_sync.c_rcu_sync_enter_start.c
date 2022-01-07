
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_sync {int gp_state; int gp_count; } ;


 int GP_PASSED ;

void rcu_sync_enter_start(struct rcu_sync *rsp)
{
 rsp->gp_count++;
 rsp->gp_state = GP_PASSED;
}
