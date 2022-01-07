
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_scrub {int tp; } ;
struct xchk_ag {int agno; int * pag; int * agi_bp; int * agf_bp; int * agfl_bp; } ;


 int NULLAGNUMBER ;
 int xchk_ag_btcur_free (struct xchk_ag*) ;
 int xfs_perag_put (int *) ;
 int xfs_trans_brelse (int ,int *) ;

void
xchk_ag_free(
 struct xfs_scrub *sc,
 struct xchk_ag *sa)
{
 xchk_ag_btcur_free(sa);
 if (sa->agfl_bp) {
  xfs_trans_brelse(sc->tp, sa->agfl_bp);
  sa->agfl_bp = ((void*)0);
 }
 if (sa->agf_bp) {
  xfs_trans_brelse(sc->tp, sa->agf_bp);
  sa->agf_bp = ((void*)0);
 }
 if (sa->agi_bp) {
  xfs_trans_brelse(sc->tp, sa->agi_bp);
  sa->agi_bp = ((void*)0);
 }
 if (sa->pag) {
  xfs_perag_put(sa->pag);
  sa->pag = ((void*)0);
 }
 sa->agno = NULLAGNUMBER;
}
