
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct request {TYPE_1__* q; } ;
struct elevator_queue {TYPE_3__* type; } ;
struct TYPE_5__ {int (* completed_request ) (struct request*,int ) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {struct elevator_queue* elevator; } ;


 int stub1 (struct request*,int ) ;

__attribute__((used)) static inline void blk_mq_sched_completed_request(struct request *rq, u64 now)
{
 struct elevator_queue *e = rq->q->elevator;

 if (e && e->type->ops.completed_request)
  e->type->ops.completed_request(rq, now);
}
