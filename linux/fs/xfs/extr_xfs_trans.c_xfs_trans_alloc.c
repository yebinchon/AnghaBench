
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint ;
struct xfs_trans_res {scalar_t__ tr_logres; } ;
struct xfs_trans {int t_flags; int t_firstblock; int t_dfops; int t_busy; int t_items; struct xfs_mount* t_mountp; int t_magic; } ;
struct xfs_mount {int m_active_trans; TYPE_2__* m_super; } ;
struct TYPE_3__ {scalar_t__ frozen; } ;
struct TYPE_4__ {TYPE_1__ s_writers; } ;


 int INIT_LIST_HEAD (int *) ;
 int NULLFSBLOCK ;
 scalar_t__ SB_FREEZE_COMPLETE ;
 int WARN_ON (int) ;
 int XFS_TRANS_HEADER_MAGIC ;
 int XFS_TRANS_NO_WRITECOUNT ;
 int _RET_IP_ ;
 int atomic_inc (int *) ;
 struct xfs_trans* kmem_zone_zalloc (int ,int ) ;
 int sb_start_intwrite (TYPE_2__*) ;
 int trace_xfs_trans_alloc (struct xfs_trans*,int ) ;
 int xfs_trans_cancel (struct xfs_trans*) ;
 int xfs_trans_reserve (struct xfs_trans*,struct xfs_trans_res*,int,int) ;
 int xfs_trans_zone ;

int
xfs_trans_alloc(
 struct xfs_mount *mp,
 struct xfs_trans_res *resp,
 uint blocks,
 uint rtextents,
 uint flags,
 struct xfs_trans **tpp)
{
 struct xfs_trans *tp;
 int error;






 tp = kmem_zone_zalloc(xfs_trans_zone, 0);
 if (!(flags & XFS_TRANS_NO_WRITECOUNT))
  sb_start_intwrite(mp->m_super);





 WARN_ON(resp->tr_logres > 0 &&
  mp->m_super->s_writers.frozen == SB_FREEZE_COMPLETE);
 atomic_inc(&mp->m_active_trans);

 tp->t_magic = XFS_TRANS_HEADER_MAGIC;
 tp->t_flags = flags;
 tp->t_mountp = mp;
 INIT_LIST_HEAD(&tp->t_items);
 INIT_LIST_HEAD(&tp->t_busy);
 INIT_LIST_HEAD(&tp->t_dfops);
 tp->t_firstblock = NULLFSBLOCK;

 error = xfs_trans_reserve(tp, resp, blocks, rtextents);
 if (error) {
  xfs_trans_cancel(tp);
  return error;
 }

 trace_xfs_trans_alloc(tp, _RET_IP_);

 *tpp = tp;
 return 0;
}
