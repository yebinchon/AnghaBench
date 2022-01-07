
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int dummy; } ;
struct blk_mq_hw_ctx {TYPE_1__* fq; } ;
struct TYPE_2__ {struct request* flush_rq; } ;



__attribute__((used)) static inline bool
is_flush_rq(struct request *req, struct blk_mq_hw_ctx *hctx)
{
 return hctx->fq->flush_rq == req;
}
