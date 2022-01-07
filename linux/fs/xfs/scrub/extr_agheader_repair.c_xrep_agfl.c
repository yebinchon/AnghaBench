
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_agblock_t ;
struct TYPE_2__ {struct xfs_buf* agfl_bp; struct xfs_buf* agf_bp; int agno; } ;
struct xfs_scrub {TYPE_1__ sa; int tp; struct xfs_mount* mp; } ;
struct xfs_mount {int m_ddev_targp; int m_sb; } ;
struct xfs_buf {int * b_ops; } ;
struct xfs_bitmap {int dummy; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 int XFS_AGFL_DADDR (struct xfs_mount*) ;
 int XFS_AG_DADDR (struct xfs_mount*,int ,int ) ;
 int XFS_AG_RESV_AGFL ;
 int XFS_FSS_TO_BB (struct xfs_mount*,int) ;
 int XFS_RMAP_OINFO_AG ;
 int xchk_perag_get (struct xfs_mount*,TYPE_1__*) ;
 int xfs_agfl_buf_ops ;
 int xfs_alloc_read_agf (struct xfs_mount*,int ,int ,int ,struct xfs_buf**) ;
 int xfs_bitmap_destroy (struct xfs_bitmap*) ;
 int xfs_bitmap_init (struct xfs_bitmap*) ;
 int xfs_sb_version_hasrmapbt (int *) ;
 int xfs_trans_read_buf (struct xfs_mount*,int ,int ,int ,int ,int ,struct xfs_buf**,int *) ;
 int xrep_agfl_collect_blocks (struct xfs_scrub*,struct xfs_buf*,struct xfs_bitmap*,int *) ;
 int xrep_agfl_init_header (struct xfs_scrub*,struct xfs_buf*,struct xfs_bitmap*,int ) ;
 int xrep_agfl_update_agf (struct xfs_scrub*,struct xfs_buf*,int ) ;
 int xrep_reap_extents (struct xfs_scrub*,struct xfs_bitmap*,int *,int ) ;
 int xrep_roll_ag_trans (struct xfs_scrub*) ;

int
xrep_agfl(
 struct xfs_scrub *sc)
{
 struct xfs_bitmap agfl_extents;
 struct xfs_mount *mp = sc->mp;
 struct xfs_buf *agf_bp;
 struct xfs_buf *agfl_bp;
 xfs_agblock_t flcount;
 int error;


 if (!xfs_sb_version_hasrmapbt(&mp->m_sb))
  return -EOPNOTSUPP;

 xchk_perag_get(sc->mp, &sc->sa);
 xfs_bitmap_init(&agfl_extents);






 error = xfs_alloc_read_agf(mp, sc->tp, sc->sa.agno, 0, &agf_bp);
 if (error)
  return error;
 if (!agf_bp)
  return -ENOMEM;





 error = xfs_trans_read_buf(mp, sc->tp, mp->m_ddev_targp,
   XFS_AG_DADDR(mp, sc->sa.agno, XFS_AGFL_DADDR(mp)),
   XFS_FSS_TO_BB(mp, 1), 0, &agfl_bp, ((void*)0));
 if (error)
  return error;
 agfl_bp->b_ops = &xfs_agfl_buf_ops;


 error = xrep_agfl_collect_blocks(sc, agf_bp, &agfl_extents, &flcount);
 if (error)
  goto err;






 xrep_agfl_update_agf(sc, agf_bp, flcount);
 xrep_agfl_init_header(sc, agfl_bp, &agfl_extents, flcount);






 sc->sa.agf_bp = agf_bp;
 sc->sa.agfl_bp = agfl_bp;
 error = xrep_roll_ag_trans(sc);
 if (error)
  goto err;


 return xrep_reap_extents(sc, &agfl_extents, &XFS_RMAP_OINFO_AG,
   XFS_AG_RESV_AGFL);
err:
 xfs_bitmap_destroy(&agfl_extents);
 return error;
}
