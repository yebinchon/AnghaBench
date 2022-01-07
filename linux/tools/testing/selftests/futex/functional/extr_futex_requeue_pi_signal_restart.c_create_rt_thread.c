
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_param {int sched_priority; } ;
typedef int schedp ;
typedef int pthread_t ;
typedef int pthread_attr_t ;


 int PTHREAD_EXPLICIT_SCHED ;
 int error (char*,int) ;
 int memset (struct sched_param*,int ,int) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setinheritsched (int *,int ) ;
 int pthread_attr_setschedparam (int *,struct sched_param*) ;
 int pthread_attr_setschedpolicy (int *,int) ;
 int pthread_create (int *,int *,void* (*) (void*),void*) ;

int create_rt_thread(pthread_t *pth, void*(*func)(void *), void *arg,
       int policy, int prio)
{
 struct sched_param schedp;
 pthread_attr_t attr;
 int ret;

 pthread_attr_init(&attr);
 memset(&schedp, 0, sizeof(schedp));

 ret = pthread_attr_setinheritsched(&attr, PTHREAD_EXPLICIT_SCHED);
 if (ret) {
  error("pthread_attr_setinheritsched\n", ret);
  return -1;
 }

 ret = pthread_attr_setschedpolicy(&attr, policy);
 if (ret) {
  error("pthread_attr_setschedpolicy\n", ret);
  return -1;
 }

 schedp.sched_priority = prio;
 ret = pthread_attr_setschedparam(&attr, &schedp);
 if (ret) {
  error("pthread_attr_setschedparam\n", ret);
  return -1;
 }

 ret = pthread_create(pth, &attr, func, arg);
 if (ret) {
  error("pthread_create\n", ret);
  return -1;
 }
 return 0;
}
