
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_arg {scalar_t__ ret; scalar_t__ id; scalar_t__ timeout; } ;
typedef int futex_t ;


 scalar_t__ ETIMEDOUT ;
 int FUTEX_PRIVATE_FLAG ;
 scalar_t__ RET_ERROR ;
 int atomic_inc (int *) ;
 scalar_t__ errno ;
 int error (char*,scalar_t__) ;
 int f1 ;
 int f2 ;
 int futex_lock_pi (int *,int *,int ,int ) ;
 int futex_unlock_pi (int *,int ) ;
 scalar_t__ futex_wait_requeue_pi (int *,int ,int *,scalar_t__,int ) ;
 int info (char*,scalar_t__,...) ;
 int pthread_exit (void*) ;
 char* strerror (scalar_t__) ;
 int usleep (int) ;
 int waiters_blocked ;
 int waiters_woken ;

void *waiterfn(void *arg)
{
 struct thread_arg *args = (struct thread_arg *)arg;
 futex_t old_val;

 info("Waiter %ld: running\n", args->id);



 usleep(1000 * (long)args->id);

 old_val = f1;
 atomic_inc(&waiters_blocked);
 info("Calling futex_wait_requeue_pi: %p (%u) -> %p\n",
      &f1, f1, &f2);
 args->ret = futex_wait_requeue_pi(&f1, old_val, &f2, args->timeout,
       FUTEX_PRIVATE_FLAG);

 info("waiter %ld woke with %d %s\n", args->id, args->ret,
      args->ret < 0 ? strerror(errno) : "");
 atomic_inc(&waiters_woken);
 if (args->ret < 0) {
  if (args->timeout && errno == ETIMEDOUT)
   args->ret = 0;
  else {
   args->ret = RET_ERROR;
   error("futex_wait_requeue_pi\n", errno);
  }
  futex_lock_pi(&f2, ((void*)0), 0, FUTEX_PRIVATE_FLAG);
 }
 futex_unlock_pi(&f2, FUTEX_PRIVATE_FLAG);

 info("Waiter %ld: exiting with %d\n", args->id, args->ret);
 pthread_exit((void *)&args->ret);
}
