
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_trans_t ;
typedef int xfs_mount_t ;
typedef int xfs_buf_t ;
typedef int xfs_agnumber_t ;


 int xfs_ialloc_read_agi (int *,int *,int ,int **) ;
 int xfs_trans_brelse (int *,int *) ;

int
xfs_ialloc_pagi_init(
 xfs_mount_t *mp,
 xfs_trans_t *tp,
 xfs_agnumber_t agno)
{
 xfs_buf_t *bp = ((void*)0);
 int error;

 error = xfs_ialloc_read_agi(mp, tp, agno, &bp);
 if (error)
  return error;
 if (bp)
  xfs_trans_brelse(tp, bp);
 return 0;
}
