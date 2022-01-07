
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ xfs_fileoff_t ;
typedef int xfs_agblock_t ;
typedef int uint64_t ;
struct xfs_rmap_irec {int dummy; } ;
struct xfs_bmbt_irec {scalar_t__ br_startoff; } ;
struct xchk_bmap_info {scalar_t__ whichfork; TYPE_2__* sc; scalar_t__ is_shared; } ;
struct TYPE_4__ {int rmap_cur; } ;
struct TYPE_5__ {TYPE_1__ sa; } ;


 scalar_t__ XFS_ATTR_FORK ;
 scalar_t__ XFS_COW_FORK ;
 unsigned int XFS_RMAP_ATTR_FORK ;
 int xchk_fblock_xref_set_corrupt (TYPE_2__*,scalar_t__,scalar_t__) ;
 int xchk_should_check_xref (TYPE_2__*,int*,int *) ;
 int xfs_rmap_get_rec (int ,struct xfs_rmap_irec*,int*) ;
 int xfs_rmap_lookup_le (int ,int ,int ,int ,scalar_t__,unsigned int,int*) ;
 int xfs_rmap_lookup_le_range (int ,int ,int ,scalar_t__,unsigned int,struct xfs_rmap_irec*,int*) ;

__attribute__((used)) static inline bool
xchk_bmap_get_rmap(
 struct xchk_bmap_info *info,
 struct xfs_bmbt_irec *irec,
 xfs_agblock_t agbno,
 uint64_t owner,
 struct xfs_rmap_irec *rmap)
{
 xfs_fileoff_t offset;
 unsigned int rflags = 0;
 int has_rmap;
 int error;

 if (info->whichfork == XFS_ATTR_FORK)
  rflags |= XFS_RMAP_ATTR_FORK;





 if (info->whichfork == XFS_COW_FORK)
  offset = 0;
 else
  offset = irec->br_startoff;






 if (info->is_shared) {
  error = xfs_rmap_lookup_le_range(info->sc->sa.rmap_cur, agbno,
    owner, offset, rflags, rmap, &has_rmap);
  if (!xchk_should_check_xref(info->sc, &error,
    &info->sc->sa.rmap_cur))
   return 0;
  goto out;
 }




 error = xfs_rmap_lookup_le(info->sc->sa.rmap_cur, agbno, 0, owner,
   offset, rflags, &has_rmap);
 if (!xchk_should_check_xref(info->sc, &error,
   &info->sc->sa.rmap_cur))
  return 0;
 if (!has_rmap)
  goto out;

 error = xfs_rmap_get_rec(info->sc->sa.rmap_cur, rmap, &has_rmap);
 if (!xchk_should_check_xref(info->sc, &error,
   &info->sc->sa.rmap_cur))
  return 0;

out:
 if (!has_rmap)
  xchk_fblock_xref_set_corrupt(info->sc, info->whichfork,
   irec->br_startoff);
 return has_rmap;
}
