
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_extlen_t ;
typedef int xfs_agblock_t ;
struct xfs_scrub {int dummy; } ;
struct xfs_owner_info {int dummy; } ;


 int xchk_xref_check_owner (struct xfs_scrub*,int ,int ,struct xfs_owner_info const*,int) ;

void
xchk_xref_is_owned_by(
 struct xfs_scrub *sc,
 xfs_agblock_t bno,
 xfs_extlen_t len,
 const struct xfs_owner_info *oinfo)
{
 xchk_xref_check_owner(sc, bno, len, oinfo, 1);
}
