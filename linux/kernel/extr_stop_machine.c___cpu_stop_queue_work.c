
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wake_q_head {int dummy; } ;
struct cpu_stopper {int thread; int works; } ;
struct cpu_stop_work {int list; } ;


 int list_add_tail (int *,int *) ;
 int wake_q_add (struct wake_q_head*,int ) ;

__attribute__((used)) static void __cpu_stop_queue_work(struct cpu_stopper *stopper,
     struct cpu_stop_work *work,
     struct wake_q_head *wakeq)
{
 list_add_tail(&work->list, &stopper->works);
 wake_q_add(wakeq, stopper->thread);
}
