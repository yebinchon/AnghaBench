
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_trans_t ;
typedef int xfs_rtblock_t ;
typedef int xfs_mount_t ;
typedef int xfs_fsblock_t ;
typedef int xfs_buf_t ;


 int xfs_rtmodify_summary_int (int *,int *,int,int ,int,int **,int *,int *) ;

int
xfs_rtmodify_summary(
 xfs_mount_t *mp,
 xfs_trans_t *tp,
 int log,
 xfs_rtblock_t bbno,
 int delta,
 xfs_buf_t **rbpp,
 xfs_fsblock_t *rsb)
{
 return xfs_rtmodify_summary_int(mp, tp, log, bbno,
     delta, rbpp, rsb, ((void*)0));
}
