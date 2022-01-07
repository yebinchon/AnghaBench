
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xfs_mount {int m_flags; } ;
struct xfs_cil_ctx {int busy_extents; int lv_chain; TYPE_2__* cil; int committing; int start_lsn; } ;
struct TYPE_4__ {int xc_push_lock; TYPE_1__* xc_log; int xc_commit_wait; } ;
struct TYPE_3__ {int l_ailp; struct xfs_mount* l_mp; } ;


 int XFS_MOUNT_DISCARD ;
 int kmem_free (struct xfs_cil_ctx*) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_all (int *) ;
 int xfs_extent_busy_clear (struct xfs_mount*,int *,int) ;
 int xfs_extent_busy_sort (int *) ;
 int xfs_trans_committed_bulk (int ,int ,int ,int) ;
 int xlog_cil_free_logvec (int ) ;
 int xlog_discard_busy_extents (struct xfs_mount*,struct xfs_cil_ctx*) ;

__attribute__((used)) static void
xlog_cil_committed(
 struct xfs_cil_ctx *ctx,
 bool abort)
{
 struct xfs_mount *mp = ctx->cil->xc_log->l_mp;
 if (abort) {
  spin_lock(&ctx->cil->xc_push_lock);
  wake_up_all(&ctx->cil->xc_commit_wait);
  spin_unlock(&ctx->cil->xc_push_lock);
 }

 xfs_trans_committed_bulk(ctx->cil->xc_log->l_ailp, ctx->lv_chain,
     ctx->start_lsn, abort);

 xfs_extent_busy_sort(&ctx->busy_extents);
 xfs_extent_busy_clear(mp, &ctx->busy_extents,
        (mp->m_flags & XFS_MOUNT_DISCARD) && !abort);

 spin_lock(&ctx->cil->xc_push_lock);
 list_del(&ctx->committing);
 spin_unlock(&ctx->cil->xc_push_lock);

 xlog_cil_free_logvec(ctx->lv_chain);

 if (!list_empty(&ctx->busy_extents))
  xlog_discard_busy_extents(mp, ctx);
 else
  kmem_free(ctx);
}
