
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_sync {int gp_wait; } ;


 int init_waitqueue_head (int *) ;
 int memset (struct rcu_sync*,int ,int) ;

void rcu_sync_init(struct rcu_sync *rsp)
{
 memset(rsp, 0, sizeof(*rsp));
 init_waitqueue_head(&rsp->gp_wait);
}
