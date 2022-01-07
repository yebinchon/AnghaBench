
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_mq_hw_ctx {int flags; } ;


 int BLK_MQ_F_TAG_SHARED ;
 int __blk_mq_tag_busy (struct blk_mq_hw_ctx*) ;

__attribute__((used)) static inline bool blk_mq_tag_busy(struct blk_mq_hw_ctx *hctx)
{
 if (!(hctx->flags & BLK_MQ_F_TAG_SHARED))
  return 0;

 return __blk_mq_tag_busy(hctx);
}
