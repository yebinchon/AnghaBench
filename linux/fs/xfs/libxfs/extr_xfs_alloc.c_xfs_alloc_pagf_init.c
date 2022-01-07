
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_trans_t ;
typedef int xfs_mount_t ;
typedef int xfs_buf_t ;
typedef int xfs_agnumber_t ;


 int xfs_alloc_read_agf (int *,int *,int ,int,int **) ;
 int xfs_trans_brelse (int *,int *) ;

int
xfs_alloc_pagf_init(
 xfs_mount_t *mp,
 xfs_trans_t *tp,
 xfs_agnumber_t agno,
 int flags)
{
 xfs_buf_t *bp;
 int error;

 if ((error = xfs_alloc_read_agf(mp, tp, agno, flags, &bp)))
  return error;
 if (bp)
  xfs_trans_brelse(tp, bp);
 return 0;
}
