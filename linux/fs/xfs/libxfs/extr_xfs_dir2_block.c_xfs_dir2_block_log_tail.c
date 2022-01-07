
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* t_mountp; } ;
typedef TYPE_2__ xfs_trans_t ;
typedef int xfs_dir2_data_hdr_t ;
typedef int xfs_dir2_block_tail_t ;
typedef int uint ;
struct xfs_buf {int * b_addr; } ;
struct TYPE_5__ {int m_dir_geo; } ;


 int * xfs_dir2_block_tail_p (int ,int *) ;
 int xfs_trans_log_buf (TYPE_2__*,struct xfs_buf*,int ,int ) ;

__attribute__((used)) static void
xfs_dir2_block_log_tail(
 xfs_trans_t *tp,
 struct xfs_buf *bp)
{
 xfs_dir2_data_hdr_t *hdr = bp->b_addr;
 xfs_dir2_block_tail_t *btp;

 btp = xfs_dir2_block_tail_p(tp->t_mountp->m_dir_geo, hdr);
 xfs_trans_log_buf(tp, bp, (uint)((char *)btp - (char *)hdr),
  (uint)((char *)(btp + 1) - (char *)hdr - 1));
}
