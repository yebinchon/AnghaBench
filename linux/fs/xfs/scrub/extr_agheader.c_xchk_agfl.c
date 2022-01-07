
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xfs_agnumber_t ;
typedef int xfs_agblock_t ;
struct TYPE_4__ {int agf_bp; int agfl_bp; int agi_bp; int agno; } ;
struct xfs_scrub {TYPE_2__ sa; int mp; TYPE_1__* sm; } ;
struct xfs_agf {int agf_flcount; } ;
struct xchk_agfl_info {unsigned int sz_entries; scalar_t__* entries; unsigned int nr_entries; struct xfs_scrub* sc; } ;
typedef int sai ;
struct TYPE_3__ {int sm_flags; int sm_agno; } ;


 int ECANCELED ;
 int EFSCORRUPTED ;
 int ENOMEM ;
 int KM_MAYFAIL ;
 int XFS_AGFL_BLOCK (int ) ;
 struct xfs_agf* XFS_BUF_TO_AGF (int ) ;
 int XFS_SCRUB_OFLAG_CORRUPT ;
 unsigned int be32_to_cpu (int ) ;
 int kmem_free (scalar_t__*) ;
 scalar_t__* kmem_zalloc (int,int ) ;
 int memset (struct xchk_agfl_info*,int ,int) ;
 int sort (scalar_t__*,unsigned int,int,int ,int *) ;
 int xchk_ag_read_headers (struct xfs_scrub*,int ,int *,int *,int *) ;
 int xchk_agblock_cmp ;
 int xchk_agfl_block ;
 int xchk_agfl_xref (struct xfs_scrub*) ;
 int xchk_block_set_corrupt (struct xfs_scrub*,int ) ;
 int xchk_buffer_recheck (struct xfs_scrub*,int ) ;
 int xchk_process_error (struct xfs_scrub*,int ,int ,int*) ;
 unsigned int xfs_agfl_size (int ) ;
 int xfs_agfl_walk (int ,struct xfs_agf*,int ,int ,struct xchk_agfl_info*) ;

int
xchk_agfl(
 struct xfs_scrub *sc)
{
 struct xchk_agfl_info sai;
 struct xfs_agf *agf;
 xfs_agnumber_t agno;
 unsigned int agflcount;
 unsigned int i;
 int error;

 agno = sc->sa.agno = sc->sm->sm_agno;
 error = xchk_ag_read_headers(sc, agno, &sc->sa.agi_bp,
   &sc->sa.agf_bp, &sc->sa.agfl_bp);
 if (!xchk_process_error(sc, agno, XFS_AGFL_BLOCK(sc->mp), &error))
  goto out;
 if (!sc->sa.agf_bp)
  return -EFSCORRUPTED;
 xchk_buffer_recheck(sc, sc->sa.agfl_bp);

 xchk_agfl_xref(sc);

 if (sc->sm->sm_flags & XFS_SCRUB_OFLAG_CORRUPT)
  goto out;


 agf = XFS_BUF_TO_AGF(sc->sa.agf_bp);
 agflcount = be32_to_cpu(agf->agf_flcount);
 if (agflcount > xfs_agfl_size(sc->mp)) {
  xchk_block_set_corrupt(sc, sc->sa.agf_bp);
  goto out;
 }
 memset(&sai, 0, sizeof(sai));
 sai.sc = sc;
 sai.sz_entries = agflcount;
 sai.entries = kmem_zalloc(sizeof(xfs_agblock_t) * agflcount,
   KM_MAYFAIL);
 if (!sai.entries) {
  error = -ENOMEM;
  goto out;
 }


 error = xfs_agfl_walk(sc->mp, XFS_BUF_TO_AGF(sc->sa.agf_bp),
   sc->sa.agfl_bp, xchk_agfl_block, &sai);
 if (error == -ECANCELED) {
  error = 0;
  goto out_free;
 }
 if (error)
  goto out_free;

 if (agflcount != sai.nr_entries) {
  xchk_block_set_corrupt(sc, sc->sa.agf_bp);
  goto out_free;
 }


 sort(sai.entries, sai.nr_entries, sizeof(sai.entries[0]),
   xchk_agblock_cmp, ((void*)0));
 for (i = 1; i < sai.nr_entries; i++) {
  if (sai.entries[i] == sai.entries[i - 1]) {
   xchk_block_set_corrupt(sc, sc->sa.agf_bp);
   break;
  }
 }

out_free:
 kmem_free(sai.entries);
out:
 return error;
}
