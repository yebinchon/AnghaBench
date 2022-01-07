
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_agnumber_t ;
struct TYPE_2__ {int sb_agcount; } ;
struct xfs_mount {TYPE_1__ m_sb; int m_ddev_targp; } ;
struct xfs_buf {int b_length; int * b_ops; } ;


 int BBTOB (int ) ;
 int ENOMEM ;
 int LIST_HEAD (int ) ;
 int XFS_AG_DADDR (struct xfs_mount*,int,int ) ;
 int XFS_BUF_TO_SBP (struct xfs_buf*) ;
 int XFS_FSS_TO_BB (struct xfs_mount*,int) ;
 int XFS_SB_DADDR ;
 int buffer_list ;
 int xfs_buf_delwri_queue (struct xfs_buf*,int *) ;
 int xfs_buf_delwri_submit (int *) ;
 struct xfs_buf* xfs_buf_get (int ,int ,int ) ;
 int xfs_buf_oneshot (struct xfs_buf*) ;
 int xfs_buf_relse (struct xfs_buf*) ;
 int xfs_buf_zero (struct xfs_buf*,int ,int ) ;
 int xfs_sb_buf_ops ;
 int xfs_sb_to_disk (int ,TYPE_1__*) ;
 int xfs_warn (struct xfs_mount*,char*,int,...) ;

int
xfs_update_secondary_sbs(
 struct xfs_mount *mp)
{
 xfs_agnumber_t agno;
 int saved_error = 0;
 int error = 0;
 LIST_HEAD (buffer_list);


 for (agno = 1; agno < mp->m_sb.sb_agcount; agno++) {
  struct xfs_buf *bp;

  bp = xfs_buf_get(mp->m_ddev_targp,
     XFS_AG_DADDR(mp, agno, XFS_SB_DADDR),
     XFS_FSS_TO_BB(mp, 1));







  if (!bp) {
   xfs_warn(mp,
  "error allocating secondary superblock for ag %d",
    agno);
   if (!saved_error)
    saved_error = -ENOMEM;
   continue;
  }

  bp->b_ops = &xfs_sb_buf_ops;
  xfs_buf_oneshot(bp);
  xfs_buf_zero(bp, 0, BBTOB(bp->b_length));
  xfs_sb_to_disk(XFS_BUF_TO_SBP(bp), &mp->m_sb);
  xfs_buf_delwri_queue(bp, &buffer_list);
  xfs_buf_relse(bp);


  if (agno % 16)
   continue;

  error = xfs_buf_delwri_submit(&buffer_list);
  if (error) {
   xfs_warn(mp,
  "write error %d updating a secondary superblock near ag %d",
    error, agno);
   if (!saved_error)
    saved_error = error;
   continue;
  }
 }
 error = xfs_buf_delwri_submit(&buffer_list);
 if (error) {
  xfs_warn(mp,
  "write error %d updating a secondary superblock near ag %d",
   error, agno);
 }

 return saved_error ? saved_error : error;
}
