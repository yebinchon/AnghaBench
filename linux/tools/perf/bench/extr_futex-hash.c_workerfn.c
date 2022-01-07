
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worker {unsigned long ops; int * futex; } ;


 scalar_t__ EAGAIN ;
 scalar_t__ EWOULDBLOCK ;
 int done ;
 scalar_t__ errno ;
 int futex_flag ;
 int futex_wait (int *,int,int *,int ) ;
 unsigned int nfutexes ;
 int pthread_cond_signal (int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int silent ;
 int thread_lock ;
 int thread_parent ;
 int thread_worker ;
 int threads_starting ;
 int warn (char*) ;

__attribute__((used)) static void *workerfn(void *arg)
{
 int ret;
 struct worker *w = (struct worker *) arg;
 unsigned int i;
 unsigned long ops = w->ops;

 pthread_mutex_lock(&thread_lock);
 threads_starting--;
 if (!threads_starting)
  pthread_cond_signal(&thread_parent);
 pthread_cond_wait(&thread_worker, &thread_lock);
 pthread_mutex_unlock(&thread_lock);

 do {
  for (i = 0; i < nfutexes; i++, ops++) {






   ret = futex_wait(&w->futex[i], 1234, ((void*)0), futex_flag);
   if (!silent &&
       (!ret || errno != EAGAIN || errno != EWOULDBLOCK))
    warn("Non-expected futex return call");
  }
 } while (!done);

 w->ops = ops;
 return ((void*)0);
}
