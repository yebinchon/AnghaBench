
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_arg {scalar_t__ ret; } ;


 int FUTEX_PRIVATE_FLAG ;
 scalar_t__ RET_ERROR ;
 int error (char*,int ) ;
 int f2 ;
 scalar_t__ futex_lock_pi (int *,int *,int ,int ) ;
 int futex_unlock_pi (int *,int ) ;
 scalar_t__ futex_wait (int *,int ,int *,int ) ;
 int pthread_exit (void*) ;
 int wake_complete ;

void *third_party_blocker(void *arg)
{
 struct thread_arg *args = (struct thread_arg *)arg;
 int ret2 = 0;

 args->ret = futex_lock_pi(&f2, ((void*)0), 0, FUTEX_PRIVATE_FLAG);
 if (args->ret)
  goto out;
 args->ret = futex_wait(&wake_complete, wake_complete, ((void*)0),
          FUTEX_PRIVATE_FLAG);
 ret2 = futex_unlock_pi(&f2, FUTEX_PRIVATE_FLAG);

 out:
 if (args->ret || ret2) {
  error("third_party_blocker() futex error", 0);
  args->ret = RET_ERROR;
 }

 pthread_exit((void *)&args->ret);
}
