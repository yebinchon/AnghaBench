
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_info_struct {int bdev; } ;
struct request_queue {int dummy; } ;


 struct request_queue* bdev_get_queue (int ) ;
 int blk_queue_discard (struct request_queue*) ;

__attribute__((used)) static bool swap_discardable(struct swap_info_struct *si)
{
 struct request_queue *q = bdev_get_queue(si->bdev);

 if (!q || !blk_queue_discard(q))
  return 0;

 return 1;
}
