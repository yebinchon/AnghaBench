
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_buf_flags_t ;
struct xfs_buftarg {int bt_mount; } ;
struct xfs_buf_map {scalar_t__ bm_len; int bm_bn; } ;
struct xfs_buf {int b_flags; int b_mount; int b_waiters; int b_pin_count; scalar_t__ b_length; TYPE_1__* b_maps; int b_bn; struct xfs_buftarg* b_target; int b_lock; int b_sema; int b_li_list; int b_list; int b_lru; int b_iowait; int b_lru_ref; int b_hold; } ;
struct TYPE_2__ {scalar_t__ bm_len; int bm_bn; } ;


 int INIT_LIST_HEAD (int *) ;
 int KM_NOFS ;
 int XBF_ASYNC ;
 int XBF_READ_AHEAD ;
 int XBF_TRYLOCK ;
 int XBF_UNMAPPED ;
 int XFS_STATS_INC (int ,int ) ;
 int _RET_IP_ ;
 int atomic_set (int *,int) ;
 int init_completion (int *) ;
 int init_waitqueue_head (int *) ;
 int kmem_zone_free (int ,struct xfs_buf*) ;
 struct xfs_buf* kmem_zone_zalloc (int ,int ) ;
 int sema_init (int *,int ) ;
 int spin_lock_init (int *) ;
 int trace_xfs_buf_init (struct xfs_buf*,int ) ;
 scalar_t__ unlikely (int) ;
 int xb_create ;
 int xfs_buf_get_maps (struct xfs_buf*,int) ;
 int xfs_buf_zone ;

__attribute__((used)) static struct xfs_buf *
_xfs_buf_alloc(
 struct xfs_buftarg *target,
 struct xfs_buf_map *map,
 int nmaps,
 xfs_buf_flags_t flags)
{
 struct xfs_buf *bp;
 int error;
 int i;

 bp = kmem_zone_zalloc(xfs_buf_zone, KM_NOFS);
 if (unlikely(!bp))
  return ((void*)0);





 flags &= ~(XBF_UNMAPPED | XBF_TRYLOCK | XBF_ASYNC | XBF_READ_AHEAD);

 atomic_set(&bp->b_hold, 1);
 atomic_set(&bp->b_lru_ref, 1);
 init_completion(&bp->b_iowait);
 INIT_LIST_HEAD(&bp->b_lru);
 INIT_LIST_HEAD(&bp->b_list);
 INIT_LIST_HEAD(&bp->b_li_list);
 sema_init(&bp->b_sema, 0);
 spin_lock_init(&bp->b_lock);
 bp->b_target = target;
 bp->b_mount = target->bt_mount;
 bp->b_flags = flags;






 error = xfs_buf_get_maps(bp, nmaps);
 if (error) {
  kmem_zone_free(xfs_buf_zone, bp);
  return ((void*)0);
 }

 bp->b_bn = map[0].bm_bn;
 bp->b_length = 0;
 for (i = 0; i < nmaps; i++) {
  bp->b_maps[i].bm_bn = map[i].bm_bn;
  bp->b_maps[i].bm_len = map[i].bm_len;
  bp->b_length += map[i].bm_len;
 }

 atomic_set(&bp->b_pin_count, 0);
 init_waitqueue_head(&bp->b_waiters);

 XFS_STATS_INC(bp->b_mount, xb_create);
 trace_xfs_buf_init(bp, _RET_IP_);

 return bp;
}
