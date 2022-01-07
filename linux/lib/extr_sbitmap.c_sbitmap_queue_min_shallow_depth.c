
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int depth; } ;
struct sbitmap_queue {unsigned int min_shallow_depth; TYPE_1__ sb; } ;


 int sbitmap_queue_update_wake_batch (struct sbitmap_queue*,int ) ;

void sbitmap_queue_min_shallow_depth(struct sbitmap_queue *sbq,
         unsigned int min_shallow_depth)
{
 sbq->min_shallow_depth = min_shallow_depth;
 sbitmap_queue_update_wake_batch(sbq, sbq->sb.depth);
}
