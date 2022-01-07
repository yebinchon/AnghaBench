
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {struct elevator_queue* elevator; } ;
struct request {struct request_queue* q; } ;
struct elevator_queue {TYPE_2__* type; } ;
struct TYPE_3__ {int (* requeue_request ) (struct request*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int stub1 (struct request*) ;

__attribute__((used)) static inline void blk_mq_sched_requeue_request(struct request *rq)
{
 struct request_queue *q = rq->q;
 struct elevator_queue *e = q->elevator;

 if (e && e->type->ops.requeue_request)
  e->type->ops.requeue_request(rq);
}
