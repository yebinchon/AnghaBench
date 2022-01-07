
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int dummy; } ;
struct xchk_ag {int agno; scalar_t__ pag; } ;


 scalar_t__ xfs_perag_get (struct xfs_mount*,int ) ;

void
xchk_perag_get(
 struct xfs_mount *mp,
 struct xchk_ag *sa)
{
 if (!sa->pag)
  sa->pag = xfs_perag_get(mp, sa->agno);
}
