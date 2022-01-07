
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct thread_data {int process_nr; int thread_nr; int task_nr; int curr_cpu; int * process_lock; int val; int * process_data; int bind_cpumask; int bind_node; } ;
typedef int pthread_t ;
typedef int pthread_mutex_t ;
struct TYPE_3__ {int nr_threads; int show_details; int bytes_process; } ;
struct TYPE_4__ {TYPE_1__ p; struct thread_data* threads; int data; } ;


 int BUG_ON (int) ;
 int bind_to_cpumask (int ) ;
 int bind_to_memnode (int ) ;
 int free (int *) ;
 int free_data (int *,int ) ;
 TYPE_2__* g ;
 int printf (char*,int,int ,int *) ;
 int pthread_create (int *,int *,int ,struct thread_data*) ;
 int pthread_join (int ,int *) ;
 int pthread_mutex_init (int *,int *) ;
 int rand () ;
 int set_taskname (char*,int) ;
 int * setup_private_data (int ) ;
 int worker_thread ;
 int * zalloc (int) ;

__attribute__((used)) static void worker_process(int process_nr)
{
 pthread_mutex_t process_lock;
 struct thread_data *td;
 pthread_t *pthreads;
 u8 *process_data;
 int task_nr;
 int ret;
 int t;

 pthread_mutex_init(&process_lock, ((void*)0));
 set_taskname("process %d", process_nr);





 task_nr = process_nr*g->p.nr_threads;
 td = g->threads + task_nr;

 bind_to_memnode(td->bind_node);
 bind_to_cpumask(td->bind_cpumask);

 pthreads = zalloc(g->p.nr_threads * sizeof(pthread_t));
 process_data = setup_private_data(g->p.bytes_process);

 if (g->p.show_details >= 3) {
  printf(" # process %2d global mem: %p, process mem: %p\n",
   process_nr, g->data, process_data);
 }

 for (t = 0; t < g->p.nr_threads; t++) {
  task_nr = process_nr*g->p.nr_threads + t;
  td = g->threads + task_nr;

  td->process_data = process_data;
  td->process_nr = process_nr;
  td->thread_nr = t;
  td->task_nr = task_nr;
  td->val = rand();
  td->curr_cpu = -1;
  td->process_lock = &process_lock;

  ret = pthread_create(pthreads + t, ((void*)0), worker_thread, td);
  BUG_ON(ret);
 }

 for (t = 0; t < g->p.nr_threads; t++) {
                ret = pthread_join(pthreads[t], ((void*)0));
  BUG_ON(ret);
 }

 free_data(process_data, g->p.bytes_process);
 free(pthreads);
}
