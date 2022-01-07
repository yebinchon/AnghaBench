
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sb_blocksize; } ;
struct xfs_mount {scalar_t__ m_ag_prealloc_blocks; TYPE_1__ m_sb; } ;
struct xfs_aghdr_grow_data {scalar_t__ daddr; int need_init; int * ops; int * work; int type; int numblks; } ;
struct aghdr_init_data {scalar_t__ daddr; int type; int numblks; scalar_t__ agsize; int nfree; int agno; } ;


 int BTOBB (int ) ;
 scalar_t__ XFS_AGB_TO_DADDR (struct xfs_mount*,int ,int ) ;
 int XFS_AGFL_DADDR (struct xfs_mount*) ;
 int XFS_AGF_DADDR (struct xfs_mount*) ;
 int XFS_AGI_DADDR (struct xfs_mount*) ;
 scalar_t__ XFS_AG_DADDR (struct xfs_mount*,int ,int ) ;
 int XFS_BNO_BLOCK (struct xfs_mount*) ;
 int XFS_BTNUM_FINO ;
 int XFS_BTNUM_INO ;
 int XFS_BTNUM_REFC ;
 scalar_t__ XFS_BUF_DADDR_NULL ;
 int XFS_CNT_BLOCK (struct xfs_mount*) ;
 int XFS_FIBT_BLOCK (struct xfs_mount*) ;
 int XFS_FSS_TO_BB (struct xfs_mount*,int) ;
 int XFS_IBT_BLOCK (struct xfs_mount*) ;
 int XFS_RMAP_BLOCK (struct xfs_mount*) ;
 int XFS_SB_DADDR ;
 int xfs_ag_init_hdr (struct xfs_mount*,struct aghdr_init_data*,int *,int *) ;
 int xfs_agf_buf_ops ;
 int xfs_agfblock_init ;
 int xfs_agfl_buf_ops ;
 int xfs_agflblock_init ;
 int xfs_agi_buf_ops ;
 int xfs_agiblock_init ;
 int xfs_bnobt_buf_ops ;
 int xfs_bnoroot_init ;
 int xfs_btroot_init ;
 int xfs_cntbt_buf_ops ;
 int xfs_cntroot_init ;
 int xfs_finobt_buf_ops ;
 int xfs_inobt_buf_ops ;
 int xfs_refc_block (struct xfs_mount*) ;
 int xfs_refcountbt_buf_ops ;
 int xfs_rmapbt_buf_ops ;
 int xfs_rmaproot_init ;
 int xfs_sb_buf_ops ;
 int xfs_sb_version_hasfinobt (TYPE_1__*) ;
 int xfs_sb_version_hasreflink (TYPE_1__*) ;
 int xfs_sb_version_hasrmapbt (TYPE_1__*) ;
 int xfs_sbblock_init ;

int
xfs_ag_init_headers(
 struct xfs_mount *mp,
 struct aghdr_init_data *id)

{
 struct xfs_aghdr_grow_data aghdr_data[] = {
 {
  .daddr = XFS_AG_DADDR(mp, id->agno, XFS_SB_DADDR),
  .numblks = XFS_FSS_TO_BB(mp, 1),
  .ops = &xfs_sb_buf_ops,
  .work = &xfs_sbblock_init,
  .need_init = 1
 },
 {
  .daddr = XFS_AG_DADDR(mp, id->agno, XFS_AGF_DADDR(mp)),
  .numblks = XFS_FSS_TO_BB(mp, 1),
  .ops = &xfs_agf_buf_ops,
  .work = &xfs_agfblock_init,
  .need_init = 1
 },
 {
  .daddr = XFS_AG_DADDR(mp, id->agno, XFS_AGFL_DADDR(mp)),
  .numblks = XFS_FSS_TO_BB(mp, 1),
  .ops = &xfs_agfl_buf_ops,
  .work = &xfs_agflblock_init,
  .need_init = 1
 },
 {
  .daddr = XFS_AG_DADDR(mp, id->agno, XFS_AGI_DADDR(mp)),
  .numblks = XFS_FSS_TO_BB(mp, 1),
  .ops = &xfs_agi_buf_ops,
  .work = &xfs_agiblock_init,
  .need_init = 1
 },
 {
  .daddr = XFS_AGB_TO_DADDR(mp, id->agno, XFS_BNO_BLOCK(mp)),
  .numblks = BTOBB(mp->m_sb.sb_blocksize),
  .ops = &xfs_bnobt_buf_ops,
  .work = &xfs_bnoroot_init,
  .need_init = 1
 },
 {
  .daddr = XFS_AGB_TO_DADDR(mp, id->agno, XFS_CNT_BLOCK(mp)),
  .numblks = BTOBB(mp->m_sb.sb_blocksize),
  .ops = &xfs_cntbt_buf_ops,
  .work = &xfs_cntroot_init,
  .need_init = 1
 },
 {
  .daddr = XFS_AGB_TO_DADDR(mp, id->agno, XFS_IBT_BLOCK(mp)),
  .numblks = BTOBB(mp->m_sb.sb_blocksize),
  .ops = &xfs_inobt_buf_ops,
  .work = &xfs_btroot_init,
  .type = XFS_BTNUM_INO,
  .need_init = 1
 },
 {
  .daddr = XFS_AGB_TO_DADDR(mp, id->agno, XFS_FIBT_BLOCK(mp)),
  .numblks = BTOBB(mp->m_sb.sb_blocksize),
  .ops = &xfs_finobt_buf_ops,
  .work = &xfs_btroot_init,
  .type = XFS_BTNUM_FINO,
  .need_init = xfs_sb_version_hasfinobt(&mp->m_sb)
 },
 {
  .daddr = XFS_AGB_TO_DADDR(mp, id->agno, XFS_RMAP_BLOCK(mp)),
  .numblks = BTOBB(mp->m_sb.sb_blocksize),
  .ops = &xfs_rmapbt_buf_ops,
  .work = &xfs_rmaproot_init,
  .need_init = xfs_sb_version_hasrmapbt(&mp->m_sb)
 },
 {
  .daddr = XFS_AGB_TO_DADDR(mp, id->agno, xfs_refc_block(mp)),
  .numblks = BTOBB(mp->m_sb.sb_blocksize),
  .ops = &xfs_refcountbt_buf_ops,
  .work = &xfs_btroot_init,
  .type = XFS_BTNUM_REFC,
  .need_init = xfs_sb_version_hasreflink(&mp->m_sb)
 },
 {
  .daddr = XFS_BUF_DADDR_NULL,
 }
 };
 struct xfs_aghdr_grow_data *dp;
 int error = 0;


 id->nfree += id->agsize - mp->m_ag_prealloc_blocks;
 for (dp = &aghdr_data[0]; dp->daddr != XFS_BUF_DADDR_NULL; dp++) {
  if (!dp->need_init)
   continue;

  id->daddr = dp->daddr;
  id->numblks = dp->numblks;
  id->type = dp->type;
  error = xfs_ag_init_hdr(mp, id, dp->work, dp->ops);
  if (error)
   break;
 }
 return error;
}
