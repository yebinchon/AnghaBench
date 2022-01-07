
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct svc_xprt {int dummy; } ;
struct TYPE_4__ {int thread_wait; } ;
struct svc_rqst {struct svc_xprt* rq_xprt; TYPE_2__ rq_chandle; int rq_flags; struct svc_pool* rq_pool; } ;
struct TYPE_3__ {int threads_timedout; } ;
struct svc_pool {int sp_flags; TYPE_1__ sp_stats; } ;


 int EAGAIN ;
 int EINTR ;
 struct svc_xprt* ERR_PTR (int ) ;
 int HZ ;
 int RQ_BUSY ;
 int SP_CONGESTED ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int WARN_ON_ONCE (struct svc_xprt*) ;
 int __set_current_state (int ) ;
 int atomic_long_inc (int *) ;
 int clear_bit (int ,int *) ;
 scalar_t__ kthread_should_stop () ;
 scalar_t__ likely (int ) ;
 int rqst_should_sleep (struct svc_rqst*) ;
 long schedule_timeout (long) ;
 int set_bit (int ,int *) ;
 int set_current_state (int ) ;
 scalar_t__ signalled () ;
 int smp_mb__after_atomic () ;
 int smp_mb__before_atomic () ;
 void* svc_xprt_dequeue (struct svc_pool*) ;
 int test_bit (int ,int *) ;
 int trace_svc_xprt_dequeue (struct svc_rqst*) ;
 int try_to_freeze () ;

__attribute__((used)) static struct svc_xprt *svc_get_next_xprt(struct svc_rqst *rqstp, long timeout)
{
 struct svc_pool *pool = rqstp->rq_pool;
 long time_left = 0;


 WARN_ON_ONCE(rqstp->rq_xprt);

 rqstp->rq_xprt = svc_xprt_dequeue(pool);
 if (rqstp->rq_xprt)
  goto out_found;





 set_current_state(TASK_INTERRUPTIBLE);
 smp_mb__before_atomic();
 clear_bit(SP_CONGESTED, &pool->sp_flags);
 clear_bit(RQ_BUSY, &rqstp->rq_flags);
 smp_mb__after_atomic();

 if (likely(rqst_should_sleep(rqstp)))
  time_left = schedule_timeout(timeout);
 else
  __set_current_state(TASK_RUNNING);

 try_to_freeze();

 set_bit(RQ_BUSY, &rqstp->rq_flags);
 smp_mb__after_atomic();
 rqstp->rq_xprt = svc_xprt_dequeue(pool);
 if (rqstp->rq_xprt)
  goto out_found;

 if (!time_left)
  atomic_long_inc(&pool->sp_stats.threads_timedout);

 if (signalled() || kthread_should_stop())
  return ERR_PTR(-EINTR);
 return ERR_PTR(-EAGAIN);
out_found:



 if (!test_bit(SP_CONGESTED, &pool->sp_flags))
  rqstp->rq_chandle.thread_wait = 5*HZ;
 else
  rqstp->rq_chandle.thread_wait = 1*HZ;
 trace_svc_xprt_dequeue(rqstp);
 return rqstp->rq_xprt;
}
