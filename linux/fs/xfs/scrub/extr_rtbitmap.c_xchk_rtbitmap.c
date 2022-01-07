
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_scrub {int tp; TYPE_1__* sm; } ;
struct TYPE_2__ {int sm_flags; } ;


 int XFS_DATA_FORK ;
 int XFS_SCRUB_OFLAG_CORRUPT ;
 int xchk_fblock_process_error (struct xfs_scrub*,int ,int ,int*) ;
 int xchk_metadata_inode_forks (struct xfs_scrub*) ;
 int xchk_rtbitmap_rec ;
 int xfs_rtalloc_query_all (int ,int ,struct xfs_scrub*) ;

int
xchk_rtbitmap(
 struct xfs_scrub *sc)
{
 int error;


 error = xchk_metadata_inode_forks(sc);
 if (error || (sc->sm->sm_flags & XFS_SCRUB_OFLAG_CORRUPT))
  return error;

 error = xfs_rtalloc_query_all(sc->tp, xchk_rtbitmap_rec, sc);
 if (!xchk_fblock_process_error(sc, XFS_DATA_FORK, 0, &error))
  goto out;

out:
 return error;
}
