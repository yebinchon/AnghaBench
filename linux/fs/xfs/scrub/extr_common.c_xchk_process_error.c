
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_agnumber_t ;
typedef int xfs_agblock_t ;
struct xfs_scrub {int dummy; } ;


 int XFS_SCRUB_OFLAG_CORRUPT ;
 int __return_address ;
 int __xchk_process_error (struct xfs_scrub*,int ,int ,int*,int ,int ) ;

bool
xchk_process_error(
 struct xfs_scrub *sc,
 xfs_agnumber_t agno,
 xfs_agblock_t bno,
 int *error)
{
 return __xchk_process_error(sc, agno, bno, error,
   XFS_SCRUB_OFLAG_CORRUPT, __return_address);
}
