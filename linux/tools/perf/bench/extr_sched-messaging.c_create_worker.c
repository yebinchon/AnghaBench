
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef int pthread_attr_t ;


 int EXIT_FAILURE ;
 int PTHREAD_STACK_MIN ;
 int err (int ,char*) ;
 int exit (int ) ;
 int fork () ;
 scalar_t__ pthread_attr_init (int *) ;
 scalar_t__ pthread_attr_setstacksize (int *,int ) ;
 int pthread_create (int *,int *,void* (*) (void*),void*) ;
 void* stub1 (void*) ;
 int thread_mode ;

__attribute__((used)) static pthread_t create_worker(void *ctx, void *(*func)(void *))
{
 pthread_attr_t attr;
 pthread_t childid;
 int ret;

 if (!thread_mode) {


  switch (fork()) {
  case -1:
   err(EXIT_FAILURE, "fork()");
   break;
  case 0:
   (*func) (ctx);
   exit(0);
   break;
  default:
   break;
  }

  return (pthread_t)0;
 }

 if (pthread_attr_init(&attr) != 0)
  err(EXIT_FAILURE, "pthread_attr_init:");


 if (pthread_attr_setstacksize(&attr, PTHREAD_STACK_MIN) != 0)
  err(EXIT_FAILURE, "pthread_attr_setstacksize");


 ret = pthread_create(&childid, &attr, func, ctx);
 if (ret != 0)
  err(EXIT_FAILURE, "pthread_create failed");

 return childid;
}
