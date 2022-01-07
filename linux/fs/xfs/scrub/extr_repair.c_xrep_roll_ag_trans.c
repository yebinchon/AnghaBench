
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ agfl_bp; scalar_t__ agf_bp; scalar_t__ agi_bp; } ;
struct xfs_scrub {TYPE_1__ sa; int tp; } ;


 int xfs_trans_bhold (int ,scalar_t__) ;
 int xfs_trans_bjoin (int ,scalar_t__) ;
 int xfs_trans_roll (int *) ;

int
xrep_roll_ag_trans(
 struct xfs_scrub *sc)
{
 int error;


 if (sc->sa.agi_bp)
  xfs_trans_bhold(sc->tp, sc->sa.agi_bp);
 if (sc->sa.agf_bp)
  xfs_trans_bhold(sc->tp, sc->sa.agf_bp);
 if (sc->sa.agfl_bp)
  xfs_trans_bhold(sc->tp, sc->sa.agfl_bp);
 error = xfs_trans_roll(&sc->tp);
 if (error)
  return error;


 if (sc->sa.agi_bp)
  xfs_trans_bjoin(sc->tp, sc->sa.agi_bp);
 if (sc->sa.agf_bp)
  xfs_trans_bjoin(sc->tp, sc->sa.agf_bp);
 if (sc->sa.agfl_bp)
  xfs_trans_bjoin(sc->tp, sc->sa.agfl_bp);

 return 0;
}
