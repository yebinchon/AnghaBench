
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;


 int ENOMEM ;
 int idle_max_cpu ;
 int ** idle_threads ;
 int init_idle_thread (int *) ;
 int * thread__new (int ,int ) ;
 int ** zalloc (int) ;

__attribute__((used)) static int init_idle_threads(int ncpu)
{
 int i, ret;

 idle_threads = zalloc(ncpu * sizeof(struct thread *));
 if (!idle_threads)
  return -ENOMEM;

 idle_max_cpu = ncpu;


 for (i = 0; i < ncpu; ++i) {
  idle_threads[i] = thread__new(0, 0);
  if (idle_threads[i] == ((void*)0))
   return -ENOMEM;

  ret = init_idle_thread(idle_threads[i]);
  if (ret < 0)
   return ret;
 }

 return 0;
}
