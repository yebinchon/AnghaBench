
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_buftarg {int bt_lru; int bt_io_count; int bt_shrinker; } ;


 int ASSERT (int) ;
 int kmem_free (struct xfs_buftarg*) ;
 int list_lru_destroy (int *) ;
 int percpu_counter_destroy (int *) ;
 scalar_t__ percpu_counter_sum (int *) ;
 int unregister_shrinker (int *) ;
 int xfs_blkdev_issue_flush (struct xfs_buftarg*) ;

void
xfs_free_buftarg(
 struct xfs_buftarg *btp)
{
 unregister_shrinker(&btp->bt_shrinker);
 ASSERT(percpu_counter_sum(&btp->bt_io_count) == 0);
 percpu_counter_destroy(&btp->bt_io_count);
 list_lru_destroy(&btp->bt_lru);

 xfs_blkdev_issue_flush(btp);

 kmem_free(btp);
}
