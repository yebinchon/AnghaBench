
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int dummy; } ;
struct blk_mq_hw_ctx {TYPE_1__* tags; } ;
struct TYPE_2__ {struct request** rqs; } ;



__attribute__((used)) static inline void blk_mq_tag_set_rq(struct blk_mq_hw_ctx *hctx,
  unsigned int tag, struct request *rq)
{
 hctx->tags->rqs[tag] = rq;
}
