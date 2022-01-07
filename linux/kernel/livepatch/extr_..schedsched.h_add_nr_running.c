
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rq {unsigned int nr_running; TYPE_1__* rd; } ;
struct TYPE_2__ {int overload; } ;


 int READ_ONCE (int ) ;
 int WRITE_ONCE (int ,int) ;
 int sched_update_tick_dependency (struct rq*) ;

__attribute__((used)) static inline void add_nr_running(struct rq *rq, unsigned count)
{
 unsigned prev_nr = rq->nr_running;

 rq->nr_running = prev_nr + count;
 sched_update_tick_dependency(rq);
}
