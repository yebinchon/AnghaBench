
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xfs_fsblock_t ;
typedef int xfs_extlen_t ;
typedef int xfs_agnumber_t ;
typedef int xfs_agblock_t ;
typedef size_t uint ;
struct xfs_trans {int t_flags; struct xfs_mount* t_mountp; } ;
struct xfs_owner_info {int dummy; } ;
struct xfs_mount {int dummy; } ;
struct xfs_extent {int ext_len; int ext_start; } ;
struct TYPE_4__ {size_t efd_nextents; struct xfs_extent* efd_extents; } ;
struct TYPE_3__ {int li_flags; } ;
struct xfs_efd_log_item {size_t efd_next_extent; TYPE_2__ efd_format; TYPE_1__ efd_item; } ;


 int ASSERT (int) ;
 int XFS_AG_RESV_NONE ;
 int XFS_FSB_TO_AGBNO (struct xfs_mount*,int ) ;
 int XFS_FSB_TO_AGNO (struct xfs_mount*,int ) ;
 int XFS_LI_DIRTY ;
 int XFS_TRANS_DIRTY ;
 int __xfs_free_extent (struct xfs_trans*,int ,int ,struct xfs_owner_info const*,int ,int) ;
 int set_bit (int ,int *) ;
 int trace_xfs_bmap_free_deferred (struct xfs_mount*,int ,int ,int ,int ) ;

__attribute__((used)) static int
xfs_trans_free_extent(
 struct xfs_trans *tp,
 struct xfs_efd_log_item *efdp,
 xfs_fsblock_t start_block,
 xfs_extlen_t ext_len,
 const struct xfs_owner_info *oinfo,
 bool skip_discard)
{
 struct xfs_mount *mp = tp->t_mountp;
 struct xfs_extent *extp;
 uint next_extent;
 xfs_agnumber_t agno = XFS_FSB_TO_AGNO(mp, start_block);
 xfs_agblock_t agbno = XFS_FSB_TO_AGBNO(mp,
        start_block);
 int error;

 trace_xfs_bmap_free_deferred(tp->t_mountp, agno, 0, agbno, ext_len);

 error = __xfs_free_extent(tp, start_block, ext_len,
      oinfo, XFS_AG_RESV_NONE, skip_discard);







 tp->t_flags |= XFS_TRANS_DIRTY;
 set_bit(XFS_LI_DIRTY, &efdp->efd_item.li_flags);

 next_extent = efdp->efd_next_extent;
 ASSERT(next_extent < efdp->efd_format.efd_nextents);
 extp = &(efdp->efd_format.efd_extents[next_extent]);
 extp->ext_start = start_block;
 extp->ext_len = ext_len;
 efdp->efd_next_extent++;

 return error;
}
