
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xarray {int dummy; } ;
typedef int pthread_t ;


 int _SC_NPROCESSORS_ONLN ;
 int creator_func ;
 int item_kill_tree (struct xarray*) ;
 int iterator_func ;
 int pthread_create (int *,int *,int *,struct xarray*) ;
 int pthread_join (int ,int *) ;
 int sysconf (int ) ;

__attribute__((used)) static void multiorder_iteration_race(struct xarray *xa)
{
 const int num_threads = sysconf(_SC_NPROCESSORS_ONLN);
 pthread_t worker_thread[num_threads];
 int i;

 pthread_create(&worker_thread[0], ((void*)0), &creator_func, xa);
 for (i = 1; i < num_threads; i++)
  pthread_create(&worker_thread[i], ((void*)0), &iterator_func, xa);

 for (i = 0; i < num_threads; i++)
  pthread_join(worker_thread[i], ((void*)0));

 item_kill_tree(xa);
}
