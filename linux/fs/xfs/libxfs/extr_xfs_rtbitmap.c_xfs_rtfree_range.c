
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int xfs_trans_t ;
typedef scalar_t__ xfs_rtblock_t ;
struct TYPE_9__ {scalar_t__ sb_rextents; } ;
struct TYPE_10__ {TYPE_1__ m_sb; } ;
typedef TYPE_2__ xfs_mount_t ;
typedef int xfs_fsblock_t ;
typedef scalar_t__ xfs_extlen_t ;
typedef int xfs_buf_t ;


 int XFS_BITTOBLOCK (TYPE_2__*,scalar_t__) ;
 int XFS_RTBLOCKLOG (scalar_t__) ;
 int xfs_rtfind_back (TYPE_2__*,int *,scalar_t__,int ,scalar_t__*) ;
 int xfs_rtfind_forw (TYPE_2__*,int *,scalar_t__,scalar_t__,scalar_t__*) ;
 int xfs_rtmodify_range (TYPE_2__*,int *,scalar_t__,scalar_t__,int) ;
 int xfs_rtmodify_summary (TYPE_2__*,int *,int ,int ,int,int **,int *) ;

int
xfs_rtfree_range(
 xfs_mount_t *mp,
 xfs_trans_t *tp,
 xfs_rtblock_t start,
 xfs_extlen_t len,
 xfs_buf_t **rbpp,
 xfs_fsblock_t *rsb)
{
 xfs_rtblock_t end;
 int error;
 xfs_rtblock_t postblock;
 xfs_rtblock_t preblock;

 end = start + len - 1;



 error = xfs_rtmodify_range(mp, tp, start, len, 1);
 if (error) {
  return error;
 }





 error = xfs_rtfind_back(mp, tp, start, 0, &preblock);
 if (error) {
  return error;
 }



 error = xfs_rtfind_forw(mp, tp, end, mp->m_sb.sb_rextents - 1,
  &postblock);
 if (error)
  return error;




 if (preblock < start) {
  error = xfs_rtmodify_summary(mp, tp,
   XFS_RTBLOCKLOG(start - preblock),
   XFS_BITTOBLOCK(mp, preblock), -1, rbpp, rsb);
  if (error) {
   return error;
  }
 }




 if (postblock > end) {
  error = xfs_rtmodify_summary(mp, tp,
   XFS_RTBLOCKLOG(postblock - end),
   XFS_BITTOBLOCK(mp, end + 1), -1, rbpp, rsb);
  if (error) {
   return error;
  }
 }




 error = xfs_rtmodify_summary(mp, tp,
  XFS_RTBLOCKLOG(postblock + 1 - preblock),
  XFS_BITTOBLOCK(mp, preblock), 1, rbpp, rsb);
 return error;
}
