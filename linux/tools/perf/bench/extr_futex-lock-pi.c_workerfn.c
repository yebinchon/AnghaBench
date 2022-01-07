
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worker {unsigned long ops; int futex; int tid; } ;


 scalar_t__ done ;
 int futex_flag ;
 int futex_lock_pi (int ,int *,int ) ;
 int futex_unlock_pi (int ,int ) ;
 int pthread_cond_signal (int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int silent ;
 int thread_lock ;
 int thread_parent ;
 int thread_worker ;
 int threads_starting ;
 int usleep (int) ;
 int warn (char*,int ,int ,int) ;

__attribute__((used)) static void *workerfn(void *arg)
{
 struct worker *w = (struct worker *) arg;
 unsigned long ops = w->ops;

 pthread_mutex_lock(&thread_lock);
 threads_starting--;
 if (!threads_starting)
  pthread_cond_signal(&thread_parent);
 pthread_cond_wait(&thread_worker, &thread_lock);
 pthread_mutex_unlock(&thread_lock);

 do {
  int ret;
 again:
  ret = futex_lock_pi(w->futex, ((void*)0), futex_flag);

  if (ret) {
   if (!silent)
    warn("thread %d: Could not lock pi-lock for %p (%d)",
         w->tid, w->futex, ret);
   if (done)
    break;

   goto again;
  }

  usleep(1);
  ret = futex_unlock_pi(w->futex, futex_flag);
  if (ret && !silent)
   warn("thread %d: Could not unlock pi-lock for %p (%d)",
        w->tid, w->futex, ret);
  ops++;
 } while (!done);

 w->ops = ops;
 return ((void*)0);
}
