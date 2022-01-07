
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_ctx; } ;
struct blk_mq_ctx {int dummy; } ;


 struct blk_mq_ctx* per_cpu_ptr (int ,unsigned int) ;

__attribute__((used)) static inline struct blk_mq_ctx *__blk_mq_get_ctx(struct request_queue *q,
        unsigned int cpu)
{
 return per_cpu_ptr(q->queue_ctx, cpu);
}
