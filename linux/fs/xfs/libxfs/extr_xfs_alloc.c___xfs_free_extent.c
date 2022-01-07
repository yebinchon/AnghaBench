
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xfs_fsblock_t ;
typedef scalar_t__ xfs_extlen_t ;
typedef int xfs_agnumber_t ;
typedef scalar_t__ xfs_agblock_t ;
struct xfs_trans {struct xfs_mount* t_mountp; } ;
struct xfs_owner_info {int dummy; } ;
struct TYPE_3__ {scalar_t__ sb_agblocks; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;
struct xfs_buf {int dummy; } ;
typedef enum xfs_ag_resv_type { ____Placeholder_xfs_ag_resv_type } xfs_ag_resv_type ;
struct TYPE_4__ {int agf_length; } ;


 int ASSERT (int) ;
 int EIO ;
 int XFS_AG_RESV_AGFL ;
 TYPE_2__* XFS_BUF_TO_AGF (struct xfs_buf*) ;
 int XFS_ERRTAG_FREE_EXTENT ;
 unsigned int XFS_EXTENT_BUSY_SKIP_DISCARD ;
 scalar_t__ XFS_FSB_TO_AGBNO (struct xfs_mount*,int ) ;
 int XFS_FSB_TO_AGNO (struct xfs_mount*,int ) ;
 scalar_t__ XFS_TEST_ERROR (int,struct xfs_mount*,int ) ;
 int XFS_WANT_CORRUPTED_GOTO (struct xfs_mount*,int,int ) ;
 scalar_t__ be32_to_cpu (int ) ;
 int err ;
 int xfs_extent_busy_insert (struct xfs_trans*,int ,scalar_t__,scalar_t__,unsigned int) ;
 int xfs_free_ag_extent (struct xfs_trans*,struct xfs_buf*,int ,scalar_t__,scalar_t__,struct xfs_owner_info const*,int) ;
 int xfs_free_extent_fix_freelist (struct xfs_trans*,int ,struct xfs_buf**) ;
 int xfs_trans_brelse (struct xfs_trans*,struct xfs_buf*) ;

int
__xfs_free_extent(
 struct xfs_trans *tp,
 xfs_fsblock_t bno,
 xfs_extlen_t len,
 const struct xfs_owner_info *oinfo,
 enum xfs_ag_resv_type type,
 bool skip_discard)
{
 struct xfs_mount *mp = tp->t_mountp;
 struct xfs_buf *agbp;
 xfs_agnumber_t agno = XFS_FSB_TO_AGNO(mp, bno);
 xfs_agblock_t agbno = XFS_FSB_TO_AGBNO(mp, bno);
 int error;
 unsigned int busy_flags = 0;

 ASSERT(len != 0);
 ASSERT(type != XFS_AG_RESV_AGFL);

 if (XFS_TEST_ERROR(0, mp,
   XFS_ERRTAG_FREE_EXTENT))
  return -EIO;

 error = xfs_free_extent_fix_freelist(tp, agno, &agbp);
 if (error)
  return error;

 XFS_WANT_CORRUPTED_GOTO(mp, agbno < mp->m_sb.sb_agblocks, err);


 XFS_WANT_CORRUPTED_GOTO(mp,
  agbno + len <= be32_to_cpu(XFS_BUF_TO_AGF(agbp)->agf_length),
    err);

 error = xfs_free_ag_extent(tp, agbp, agno, agbno, len, oinfo, type);
 if (error)
  goto err;

 if (skip_discard)
  busy_flags |= XFS_EXTENT_BUSY_SKIP_DISCARD;
 xfs_extent_busy_insert(tp, agno, agbno, len, busy_flags);
 return 0;

err:
 xfs_trans_brelse(tp, agbp);
 return error;
}
