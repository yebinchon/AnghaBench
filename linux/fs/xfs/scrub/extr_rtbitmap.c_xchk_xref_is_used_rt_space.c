
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ xfs_rtblock_t ;
typedef scalar_t__ xfs_extlen_t ;
struct xfs_scrub {TYPE_2__* mp; int tp; int sm; } ;
struct TYPE_7__ {int i_ino; } ;
struct TYPE_5__ {int sb_rextsize; } ;
struct TYPE_6__ {TYPE_3__* m_rbmip; TYPE_1__ m_sb; } ;


 int XFS_ILOCK_RTBITMAP ;
 int XFS_ILOCK_SHARED ;
 int do_div (scalar_t__,int ) ;
 int xchk_ino_xref_set_corrupt (struct xfs_scrub*,int ) ;
 int xchk_should_check_xref (struct xfs_scrub*,int*,int *) ;
 scalar_t__ xchk_skip_xref (int ) ;
 int xfs_ilock (TYPE_3__*,int) ;
 int xfs_iunlock (TYPE_3__*,int) ;
 int xfs_rtalloc_extent_is_free (TYPE_2__*,int ,scalar_t__,scalar_t__,int*) ;

void
xchk_xref_is_used_rt_space(
 struct xfs_scrub *sc,
 xfs_rtblock_t fsbno,
 xfs_extlen_t len)
{
 xfs_rtblock_t startext;
 xfs_rtblock_t endext;
 xfs_rtblock_t extcount;
 bool is_free;
 int error;

 if (xchk_skip_xref(sc->sm))
  return;

 startext = fsbno;
 endext = fsbno + len - 1;
 do_div(startext, sc->mp->m_sb.sb_rextsize);
 do_div(endext, sc->mp->m_sb.sb_rextsize);
 extcount = endext - startext + 1;
 xfs_ilock(sc->mp->m_rbmip, XFS_ILOCK_SHARED | XFS_ILOCK_RTBITMAP);
 error = xfs_rtalloc_extent_is_free(sc->mp, sc->tp, startext, extcount,
   &is_free);
 if (!xchk_should_check_xref(sc, &error, ((void*)0)))
  goto out_unlock;
 if (is_free)
  xchk_ino_xref_set_corrupt(sc, sc->mp->m_rbmip->i_ino);
out_unlock:
 xfs_iunlock(sc->mp->m_rbmip, XFS_ILOCK_SHARED | XFS_ILOCK_RTBITMAP);
}
