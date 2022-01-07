
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pag; int agno; } ;
struct xfs_scrub {TYPE_1__ sa; int tp; int mp; } ;
struct xfs_alloc_arg {int alignment; int pag; int agno; int tp; int mp; int member_0; } ;


 int XFS_ALLOC_FLAG_NOSHRINK ;
 int xfs_alloc_fix_freelist (struct xfs_alloc_arg*,int ) ;

int
xrep_fix_freelist(
 struct xfs_scrub *sc,
 bool can_shrink)
{
 struct xfs_alloc_arg args = {0};

 args.mp = sc->mp;
 args.tp = sc->tp;
 args.agno = sc->sa.agno;
 args.alignment = 1;
 args.pag = sc->sa.pag;

 return xfs_alloc_fix_freelist(&args,
   can_shrink ? 0 : XFS_ALLOC_FLAG_NOSHRINK);
}
