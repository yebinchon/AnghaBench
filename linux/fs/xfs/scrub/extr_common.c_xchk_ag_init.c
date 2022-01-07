
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_agnumber_t ;
struct xfs_scrub {int dummy; } ;
struct xchk_ag {int agfl_bp; int agf_bp; int agi_bp; int agno; } ;


 int xchk_ag_btcur_init (struct xfs_scrub*,struct xchk_ag*) ;
 int xchk_ag_read_headers (struct xfs_scrub*,int ,int *,int *,int *) ;

int
xchk_ag_init(
 struct xfs_scrub *sc,
 xfs_agnumber_t agno,
 struct xchk_ag *sa)
{
 int error;

 sa->agno = agno;
 error = xchk_ag_read_headers(sc, agno, &sa->agi_bp,
   &sa->agf_bp, &sa->agfl_bp);
 if (error)
  return error;

 return xchk_ag_btcur_init(sc, sa);
}
