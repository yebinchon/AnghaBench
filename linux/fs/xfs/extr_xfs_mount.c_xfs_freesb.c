
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {struct xfs_buf* m_sb_bp; } ;
struct xfs_buf {int dummy; } ;


 int xfs_buf_lock (struct xfs_buf*) ;
 int xfs_buf_relse (struct xfs_buf*) ;

void
xfs_freesb(
 struct xfs_mount *mp)
{
 struct xfs_buf *bp = mp->m_sb_bp;

 xfs_buf_lock(bp);
 mp->m_sb_bp = ((void*)0);
 xfs_buf_relse(bp);
}
