
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbq_wait_state {int dummy; } ;
struct sbitmap_queue {struct sbq_wait_state* ws; } ;
struct blk_mq_hw_ctx {int wait_index; } ;


 struct sbq_wait_state* sbq_wait_ptr (struct sbitmap_queue*,int *) ;

__attribute__((used)) static inline struct sbq_wait_state *bt_wait_ptr(struct sbitmap_queue *bt,
       struct blk_mq_hw_ctx *hctx)
{
 if (!hctx)
  return &bt->ws[0];
 return sbq_wait_ptr(bt, &hctx->wait_index);
}
