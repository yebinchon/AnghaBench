
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_agnumber_t ;
struct xfs_scrub {int tp; struct xfs_mount* mp; } ;
struct xfs_mount {int m_sb; } ;
struct xchk_ag {int refc_cur; int agf_bp; int pag; int rmap_cur; void* fino_cur; int agi_bp; void* ino_cur; void* cnt_cur; void* bno_cur; int agno; } ;


 int ENOMEM ;
 int XFS_BTNUM_BNO ;
 int XFS_BTNUM_CNT ;
 int XFS_BTNUM_FINO ;
 int XFS_BTNUM_INO ;
 int XFS_BTNUM_REFC ;
 int XFS_BTNUM_RMAP ;
 scalar_t__ xchk_ag_btree_healthy_enough (struct xfs_scrub*,int ,int ) ;
 int xchk_perag_get (struct xfs_mount*,struct xchk_ag*) ;
 void* xfs_allocbt_init_cursor (struct xfs_mount*,int ,int ,int ,int ) ;
 void* xfs_inobt_init_cursor (struct xfs_mount*,int ,int ,int ,int ) ;
 int xfs_refcountbt_init_cursor (struct xfs_mount*,int ,int ,int ) ;
 int xfs_rmapbt_init_cursor (struct xfs_mount*,int ,int ,int ) ;
 scalar_t__ xfs_sb_version_hasfinobt (int *) ;
 scalar_t__ xfs_sb_version_hasreflink (int *) ;
 scalar_t__ xfs_sb_version_hasrmapbt (int *) ;

int
xchk_ag_btcur_init(
 struct xfs_scrub *sc,
 struct xchk_ag *sa)
{
 struct xfs_mount *mp = sc->mp;
 xfs_agnumber_t agno = sa->agno;

 xchk_perag_get(sc->mp, sa);
 if (sa->agf_bp &&
     xchk_ag_btree_healthy_enough(sc, sa->pag, XFS_BTNUM_BNO)) {

  sa->bno_cur = xfs_allocbt_init_cursor(mp, sc->tp, sa->agf_bp,
    agno, XFS_BTNUM_BNO);
  if (!sa->bno_cur)
   goto err;
 }

 if (sa->agf_bp &&
     xchk_ag_btree_healthy_enough(sc, sa->pag, XFS_BTNUM_CNT)) {

  sa->cnt_cur = xfs_allocbt_init_cursor(mp, sc->tp, sa->agf_bp,
    agno, XFS_BTNUM_CNT);
  if (!sa->cnt_cur)
   goto err;
 }


 if (sa->agi_bp &&
     xchk_ag_btree_healthy_enough(sc, sa->pag, XFS_BTNUM_INO)) {
  sa->ino_cur = xfs_inobt_init_cursor(mp, sc->tp, sa->agi_bp,
     agno, XFS_BTNUM_INO);
  if (!sa->ino_cur)
   goto err;
 }


 if (sa->agi_bp && xfs_sb_version_hasfinobt(&mp->m_sb) &&
     xchk_ag_btree_healthy_enough(sc, sa->pag, XFS_BTNUM_FINO)) {
  sa->fino_cur = xfs_inobt_init_cursor(mp, sc->tp, sa->agi_bp,
    agno, XFS_BTNUM_FINO);
  if (!sa->fino_cur)
   goto err;
 }


 if (sa->agf_bp && xfs_sb_version_hasrmapbt(&mp->m_sb) &&
     xchk_ag_btree_healthy_enough(sc, sa->pag, XFS_BTNUM_RMAP)) {
  sa->rmap_cur = xfs_rmapbt_init_cursor(mp, sc->tp, sa->agf_bp,
    agno);
  if (!sa->rmap_cur)
   goto err;
 }


 if (sa->agf_bp && xfs_sb_version_hasreflink(&mp->m_sb) &&
     xchk_ag_btree_healthy_enough(sc, sa->pag, XFS_BTNUM_REFC)) {
  sa->refc_cur = xfs_refcountbt_init_cursor(mp, sc->tp,
    sa->agf_bp, agno);
  if (!sa->refc_cur)
   goto err;
 }

 return 0;
err:
 return -ENOMEM;
}
