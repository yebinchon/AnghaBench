
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_trans {struct xfs_mount* t_mountp; } ;
struct TYPE_2__ {void* sb_fdblocks; void* sb_ifree; void* sb_icount; } ;
struct xfs_mount {TYPE_1__ m_sb; int m_fdblocks; int m_ifree; int m_icount; } ;
struct xfs_dsb {int dummy; } ;
struct xfs_buf {int dummy; } ;


 int XFS_BLFT_SB_BUF ;
 int XFS_BUF_TO_SBP (struct xfs_buf*) ;
 void* percpu_counter_sum (int *) ;
 int xfs_sb_to_disk (int ,TYPE_1__*) ;
 int xfs_trans_buf_set_type (struct xfs_trans*,struct xfs_buf*,int ) ;
 struct xfs_buf* xfs_trans_getsb (struct xfs_trans*,struct xfs_mount*) ;
 int xfs_trans_log_buf (struct xfs_trans*,struct xfs_buf*,int ,int) ;

void
xfs_log_sb(
 struct xfs_trans *tp)
{
 struct xfs_mount *mp = tp->t_mountp;
 struct xfs_buf *bp = xfs_trans_getsb(tp, mp);

 mp->m_sb.sb_icount = percpu_counter_sum(&mp->m_icount);
 mp->m_sb.sb_ifree = percpu_counter_sum(&mp->m_ifree);
 mp->m_sb.sb_fdblocks = percpu_counter_sum(&mp->m_fdblocks);

 xfs_sb_to_disk(XFS_BUF_TO_SBP(bp), &mp->m_sb);
 xfs_trans_buf_set_type(tp, bp, XFS_BLFT_SB_BUF);
 xfs_trans_log_buf(tp, bp, 0, sizeof(struct xfs_dsb) - 1);
}
