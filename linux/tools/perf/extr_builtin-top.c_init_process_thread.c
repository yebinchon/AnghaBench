
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cond; int mutex; int * data; int * in; } ;
struct perf_top {TYPE_1__ qe; } ;


 int deliver_event ;
 int ordered_events__init (int *,int ,struct perf_top*) ;
 int ordered_events__set_copy_on_queue (int *,int) ;
 int pthread_cond_init (int *,int *) ;
 int pthread_mutex_init (int *,int *) ;

__attribute__((used)) static void init_process_thread(struct perf_top *top)
{
 ordered_events__init(&top->qe.data[0], deliver_event, top);
 ordered_events__init(&top->qe.data[1], deliver_event, top);
 ordered_events__set_copy_on_queue(&top->qe.data[0], 1);
 ordered_events__set_copy_on_queue(&top->qe.data[1], 1);
 top->qe.in = &top->qe.data[0];
 pthread_mutex_init(&top->qe.mutex, ((void*)0));
 pthread_cond_init(&top->qe.cond, ((void*)0));
}
