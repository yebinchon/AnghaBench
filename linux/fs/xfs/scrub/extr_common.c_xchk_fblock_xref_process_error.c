
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_fileoff_t ;
struct xfs_scrub {int dummy; } ;


 int XFS_SCRUB_OFLAG_XFAIL ;
 int __return_address ;
 int __xchk_fblock_process_error (struct xfs_scrub*,int,int ,int*,int ,int ) ;

bool
xchk_fblock_xref_process_error(
 struct xfs_scrub *sc,
 int whichfork,
 xfs_fileoff_t offset,
 int *error)
{
 return __xchk_fblock_process_error(sc, whichfork, offset, error,
   XFS_SCRUB_OFLAG_XFAIL, __return_address);
}
