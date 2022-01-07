
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct xfs_scrub {TYPE_1__* sm; } ;
struct TYPE_7__ {int geo; int whichfork; } ;
struct xchk_da_btree {TYPE_5__* state; TYPE_2__ dargs; struct xfs_scrub* sc; } ;
struct TYPE_9__ {TYPE_3__* blk; } ;
struct TYPE_10__ {TYPE_4__ path; } ;
struct TYPE_8__ {int blkno; } ;
struct TYPE_6__ {int sm_flags; } ;


 int XFS_SCRUB_OFLAG_CORRUPT ;
 int __return_address ;
 int trace_xchk_fblock_error (struct xfs_scrub*,int ,int ,int ) ;
 int xfs_dir2_da_to_db (int ,int ) ;

void
xchk_da_set_corrupt(
 struct xchk_da_btree *ds,
 int level)
{
 struct xfs_scrub *sc = ds->sc;

 sc->sm->sm_flags |= XFS_SCRUB_OFLAG_CORRUPT;

 trace_xchk_fblock_error(sc, ds->dargs.whichfork,
   xfs_dir2_da_to_db(ds->dargs.geo,
    ds->state->path.blk[level].blkno),
   __return_address);
}
