
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct blk_plug {int dummy; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {struct blk_plug* plug; } ;


 int bio_op (struct bio*) ;
 int blk_queue_is_zoned (struct request_queue*) ;
 TYPE_1__* current ;
 int op_is_write (int ) ;

__attribute__((used)) static inline struct blk_plug *blk_mq_plug(struct request_queue *q,
        struct bio *bio)
{




 if (!blk_queue_is_zoned(q) || !op_is_write(bio_op(bio)))
  return current->plug;


 return ((void*)0);
}
