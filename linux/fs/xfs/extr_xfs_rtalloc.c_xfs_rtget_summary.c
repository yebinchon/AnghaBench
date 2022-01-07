
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_trans_t ;
typedef int xfs_suminfo_t ;
typedef int xfs_rtblock_t ;
typedef int xfs_mount_t ;
typedef int xfs_fsblock_t ;
typedef int xfs_buf_t ;


 int xfs_rtmodify_summary_int (int *,int *,int,int ,int ,int **,int *,int *) ;

__attribute__((used)) static int
xfs_rtget_summary(
 xfs_mount_t *mp,
 xfs_trans_t *tp,
 int log,
 xfs_rtblock_t bbno,
 xfs_buf_t **rbpp,
 xfs_fsblock_t *rsb,
 xfs_suminfo_t *sum)
{
 return xfs_rtmodify_summary_int(mp, tp, log, bbno, 0, rbpp, rsb, sum);
}
