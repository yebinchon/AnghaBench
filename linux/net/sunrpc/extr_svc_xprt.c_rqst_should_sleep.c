
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {struct svc_pool* rq_pool; } ;
struct svc_pool {int sp_sockets; int sp_flags; } ;


 int SP_TASK_PENDING ;
 int current ;
 scalar_t__ freezing (int ) ;
 scalar_t__ kthread_should_stop () ;
 int list_empty (int *) ;
 scalar_t__ signalled () ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static bool
rqst_should_sleep(struct svc_rqst *rqstp)
{
 struct svc_pool *pool = rqstp->rq_pool;


 if (test_and_clear_bit(SP_TASK_PENDING, &pool->sp_flags))
  return 0;


 if (!list_empty(&pool->sp_sockets))
  return 0;


 if (signalled() || kthread_should_stop())
  return 0;


 if (freezing(current))
  return 0;

 return 1;
}
