
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbitmap_queue {int sb; } ;


 int sbitmap_queue_update_wake_batch (struct sbitmap_queue*,unsigned int) ;
 int sbitmap_resize (int *,unsigned int) ;

void sbitmap_queue_resize(struct sbitmap_queue *sbq, unsigned int depth)
{
 sbitmap_queue_update_wake_batch(sbq, depth);
 sbitmap_resize(&sbq->sb, depth);
}
