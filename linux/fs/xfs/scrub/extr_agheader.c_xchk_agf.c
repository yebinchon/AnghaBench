
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xfs_agnumber_t ;
typedef scalar_t__ xfs_agblock_t ;
struct TYPE_4__ {int agf_bp; int agfl_bp; int agi_bp; int agno; } ;
struct xfs_scrub {TYPE_2__ sa; struct xfs_mount* mp; TYPE_1__* sm; } ;
struct xfs_perag {void* pagf_freeblks; void* pagf_flcount; void* pagf_btreeblks; } ;
struct xfs_mount {int m_sb; } ;
struct xfs_agf {int agf_btreeblks; int agf_flcount; int agf_freeblks; int agf_fllast; int agf_flfirst; int agf_refcount_level; int agf_refcount_root; int * agf_levels; int * agf_roots; int agf_length; } ;
struct TYPE_3__ {int sm_agno; } ;


 int XFS_AGF_BLOCK (struct xfs_mount*) ;
 size_t XFS_BTNUM_BNO ;
 size_t XFS_BTNUM_CNT ;
 size_t XFS_BTNUM_RMAP ;
 int XFS_BTREE_MAXLEVELS ;
 struct xfs_agf* XFS_BUF_TO_AGF (int ) ;
 void* be32_to_cpu (int ) ;
 int xchk_ag_read_headers (struct xfs_scrub*,int ,int *,int *,int *) ;
 int xchk_agf_xref (struct xfs_scrub*) ;
 int xchk_block_set_corrupt (struct xfs_scrub*,int ) ;
 int xchk_buffer_recheck (struct xfs_scrub*,int ) ;
 int xchk_process_error (struct xfs_scrub*,int ,int ,int*) ;
 scalar_t__ xfs_ag_block_count (struct xfs_mount*,int ) ;
 scalar_t__ xfs_agfl_size (struct xfs_mount*) ;
 struct xfs_perag* xfs_perag_get (struct xfs_mount*,int ) ;
 int xfs_perag_put (struct xfs_perag*) ;
 scalar_t__ xfs_sb_version_hasreflink (int *) ;
 scalar_t__ xfs_sb_version_hasrmapbt (int *) ;
 int xfs_verify_agbno (struct xfs_mount*,int ,scalar_t__) ;

int
xchk_agf(
 struct xfs_scrub *sc)
{
 struct xfs_mount *mp = sc->mp;
 struct xfs_agf *agf;
 struct xfs_perag *pag;
 xfs_agnumber_t agno;
 xfs_agblock_t agbno;
 xfs_agblock_t eoag;
 xfs_agblock_t agfl_first;
 xfs_agblock_t agfl_last;
 xfs_agblock_t agfl_count;
 xfs_agblock_t fl_count;
 int level;
 int error = 0;

 agno = sc->sa.agno = sc->sm->sm_agno;
 error = xchk_ag_read_headers(sc, agno, &sc->sa.agi_bp,
   &sc->sa.agf_bp, &sc->sa.agfl_bp);
 if (!xchk_process_error(sc, agno, XFS_AGF_BLOCK(sc->mp), &error))
  goto out;
 xchk_buffer_recheck(sc, sc->sa.agf_bp);

 agf = XFS_BUF_TO_AGF(sc->sa.agf_bp);


 eoag = be32_to_cpu(agf->agf_length);
 if (eoag != xfs_ag_block_count(mp, agno))
  xchk_block_set_corrupt(sc, sc->sa.agf_bp);


 agbno = be32_to_cpu(agf->agf_roots[XFS_BTNUM_BNO]);
 if (!xfs_verify_agbno(mp, agno, agbno))
  xchk_block_set_corrupt(sc, sc->sa.agf_bp);

 agbno = be32_to_cpu(agf->agf_roots[XFS_BTNUM_CNT]);
 if (!xfs_verify_agbno(mp, agno, agbno))
  xchk_block_set_corrupt(sc, sc->sa.agf_bp);

 level = be32_to_cpu(agf->agf_levels[XFS_BTNUM_BNO]);
 if (level <= 0 || level > XFS_BTREE_MAXLEVELS)
  xchk_block_set_corrupt(sc, sc->sa.agf_bp);

 level = be32_to_cpu(agf->agf_levels[XFS_BTNUM_CNT]);
 if (level <= 0 || level > XFS_BTREE_MAXLEVELS)
  xchk_block_set_corrupt(sc, sc->sa.agf_bp);

 if (xfs_sb_version_hasrmapbt(&mp->m_sb)) {
  agbno = be32_to_cpu(agf->agf_roots[XFS_BTNUM_RMAP]);
  if (!xfs_verify_agbno(mp, agno, agbno))
   xchk_block_set_corrupt(sc, sc->sa.agf_bp);

  level = be32_to_cpu(agf->agf_levels[XFS_BTNUM_RMAP]);
  if (level <= 0 || level > XFS_BTREE_MAXLEVELS)
   xchk_block_set_corrupt(sc, sc->sa.agf_bp);
 }

 if (xfs_sb_version_hasreflink(&mp->m_sb)) {
  agbno = be32_to_cpu(agf->agf_refcount_root);
  if (!xfs_verify_agbno(mp, agno, agbno))
   xchk_block_set_corrupt(sc, sc->sa.agf_bp);

  level = be32_to_cpu(agf->agf_refcount_level);
  if (level <= 0 || level > XFS_BTREE_MAXLEVELS)
   xchk_block_set_corrupt(sc, sc->sa.agf_bp);
 }


 agfl_first = be32_to_cpu(agf->agf_flfirst);
 agfl_last = be32_to_cpu(agf->agf_fllast);
 agfl_count = be32_to_cpu(agf->agf_flcount);
 if (agfl_last > agfl_first)
  fl_count = agfl_last - agfl_first + 1;
 else
  fl_count = xfs_agfl_size(mp) - agfl_first + agfl_last + 1;
 if (agfl_count != 0 && fl_count != agfl_count)
  xchk_block_set_corrupt(sc, sc->sa.agf_bp);


 pag = xfs_perag_get(mp, agno);
 if (pag->pagf_freeblks != be32_to_cpu(agf->agf_freeblks))
  xchk_block_set_corrupt(sc, sc->sa.agf_bp);
 if (pag->pagf_flcount != be32_to_cpu(agf->agf_flcount))
  xchk_block_set_corrupt(sc, sc->sa.agf_bp);
 if (pag->pagf_btreeblks != be32_to_cpu(agf->agf_btreeblks))
  xchk_block_set_corrupt(sc, sc->sa.agf_bp);
 xfs_perag_put(pag);

 xchk_agf_xref(sc);
out:
 return error;
}
