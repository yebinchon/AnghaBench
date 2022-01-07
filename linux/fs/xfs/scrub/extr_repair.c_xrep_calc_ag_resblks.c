
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ xfs_extlen_t ;
typedef int xfs_agino_t ;
struct xfs_scrub_metadata {int sm_flags; int sm_agno; } ;
struct xfs_scrub {struct xfs_scrub_metadata* sm; struct xfs_mount* mp; } ;
struct xfs_perag {int pagi_count; scalar_t__ pagi_init; } ;
struct xfs_mount {int m_sb; } ;
struct xfs_buf {int dummy; } ;
struct TYPE_2__ {int agf_freeblks; int agf_length; } ;


 scalar_t__ NULLAGBLOCK ;
 int NULLAGINO ;
 TYPE_1__* XFS_BUF_TO_AGF (struct xfs_buf*) ;
 int XFS_INODES_PER_CHUNK ;
 int XFS_INODES_PER_HOLEMASK_BIT ;
 int XFS_SCRUB_IFLAG_REPAIR ;
 scalar_t__ be32_to_cpu (int ) ;
 scalar_t__ max (scalar_t__,scalar_t__) ;
 int trace_xrep_calc_ag_resblks (struct xfs_mount*,int ,int,scalar_t__,scalar_t__,scalar_t__) ;
 int trace_xrep_calc_ag_resblks_btsize (struct xfs_mount*,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ xfs_ag_block_count (struct xfs_mount*,int ) ;
 int xfs_agino_range (struct xfs_mount*,int ,int*,int*) ;
 int xfs_alloc_read_agf (struct xfs_mount*,int *,int ,int ,struct xfs_buf**) ;
 int xfs_allocbt_calc_size (struct xfs_mount*,scalar_t__) ;
 int xfs_buf_relse (struct xfs_buf*) ;
 int xfs_ialloc_read_agi (struct xfs_mount*,int *,int ,struct xfs_buf**) ;
 scalar_t__ xfs_iallocbt_calc_size (struct xfs_mount*,int) ;
 struct xfs_perag* xfs_perag_get (struct xfs_mount*,int ) ;
 int xfs_perag_put (struct xfs_perag*) ;
 scalar_t__ xfs_refcountbt_calc_size (struct xfs_mount*,scalar_t__) ;
 scalar_t__ xfs_rmapbt_calc_size (struct xfs_mount*,scalar_t__) ;
 scalar_t__ xfs_sb_version_hasfinobt (int *) ;
 scalar_t__ xfs_sb_version_hasreflink (int *) ;
 scalar_t__ xfs_sb_version_hasrmapbt (int *) ;
 scalar_t__ xfs_sb_version_hassparseinodes (int *) ;
 int xfs_verify_agino (struct xfs_mount*,int ,int) ;

xfs_extlen_t
xrep_calc_ag_resblks(
 struct xfs_scrub *sc)
{
 struct xfs_mount *mp = sc->mp;
 struct xfs_scrub_metadata *sm = sc->sm;
 struct xfs_perag *pag;
 struct xfs_buf *bp;
 xfs_agino_t icount = NULLAGINO;
 xfs_extlen_t aglen = NULLAGBLOCK;
 xfs_extlen_t usedlen;
 xfs_extlen_t freelen;
 xfs_extlen_t bnobt_sz;
 xfs_extlen_t inobt_sz;
 xfs_extlen_t rmapbt_sz;
 xfs_extlen_t refcbt_sz;
 int error;

 if (!(sm->sm_flags & XFS_SCRUB_IFLAG_REPAIR))
  return 0;

 pag = xfs_perag_get(mp, sm->sm_agno);
 if (pag->pagi_init) {

  icount = pag->pagi_count;
 } else {

  error = xfs_ialloc_read_agi(mp, ((void*)0), sm->sm_agno, &bp);
  if (!error) {
   icount = pag->pagi_count;
   xfs_buf_relse(bp);
  }
 }


 error = xfs_alloc_read_agf(mp, ((void*)0), sm->sm_agno, 0, &bp);
 if (!error) {
  aglen = be32_to_cpu(XFS_BUF_TO_AGF(bp)->agf_length);
  freelen = be32_to_cpu(XFS_BUF_TO_AGF(bp)->agf_freeblks);
  usedlen = aglen - freelen;
  xfs_buf_relse(bp);
 }
 xfs_perag_put(pag);


 if (icount == NULLAGINO ||
     !xfs_verify_agino(mp, sm->sm_agno, icount)) {
  xfs_agino_t first, last;

  xfs_agino_range(mp, sm->sm_agno, &first, &last);
  icount = last - first + 1;
 }


 if (aglen == NULLAGBLOCK ||
     aglen != xfs_ag_block_count(mp, sm->sm_agno) ||
     freelen >= aglen) {
  aglen = xfs_ag_block_count(mp, sm->sm_agno);
  freelen = aglen;
  usedlen = aglen;
 }

 trace_xrep_calc_ag_resblks(mp, sm->sm_agno, icount, aglen,
   freelen, usedlen);






 bnobt_sz = 2 * xfs_allocbt_calc_size(mp, freelen);
 if (xfs_sb_version_hassparseinodes(&mp->m_sb))
  inobt_sz = xfs_iallocbt_calc_size(mp, icount /
    XFS_INODES_PER_HOLEMASK_BIT);
 else
  inobt_sz = xfs_iallocbt_calc_size(mp, icount /
    XFS_INODES_PER_CHUNK);
 if (xfs_sb_version_hasfinobt(&mp->m_sb))
  inobt_sz *= 2;
 if (xfs_sb_version_hasreflink(&mp->m_sb))
  refcbt_sz = xfs_refcountbt_calc_size(mp, usedlen);
 else
  refcbt_sz = 0;
 if (xfs_sb_version_hasrmapbt(&mp->m_sb)) {
  if (xfs_sb_version_hasreflink(&mp->m_sb))
   rmapbt_sz = xfs_rmapbt_calc_size(mp,
     (unsigned long long)aglen * 2);
  else
   rmapbt_sz = xfs_rmapbt_calc_size(mp, usedlen);
 } else {
  rmapbt_sz = 0;
 }

 trace_xrep_calc_ag_resblks_btsize(mp, sm->sm_agno, bnobt_sz,
   inobt_sz, rmapbt_sz, refcbt_sz);

 return max(max(bnobt_sz, inobt_sz), max(rmapbt_sz, refcbt_sz));
}
