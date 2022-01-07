
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xchk_ag {int * cnt_cur; int * bno_cur; int * ino_cur; int * fino_cur; int * rmap_cur; int * refc_cur; } ;


 int XFS_BTREE_ERROR ;
 int xfs_btree_del_cursor (int *,int ) ;

void
xchk_ag_btcur_free(
 struct xchk_ag *sa)
{
 if (sa->refc_cur)
  xfs_btree_del_cursor(sa->refc_cur, XFS_BTREE_ERROR);
 if (sa->rmap_cur)
  xfs_btree_del_cursor(sa->rmap_cur, XFS_BTREE_ERROR);
 if (sa->fino_cur)
  xfs_btree_del_cursor(sa->fino_cur, XFS_BTREE_ERROR);
 if (sa->ino_cur)
  xfs_btree_del_cursor(sa->ino_cur, XFS_BTREE_ERROR);
 if (sa->cnt_cur)
  xfs_btree_del_cursor(sa->cnt_cur, XFS_BTREE_ERROR);
 if (sa->bno_cur)
  xfs_btree_del_cursor(sa->bno_cur, XFS_BTREE_ERROR);

 sa->refc_cur = ((void*)0);
 sa->rmap_cur = ((void*)0);
 sa->fino_cur = ((void*)0);
 sa->ino_cur = ((void*)0);
 sa->bno_cur = ((void*)0);
 sa->cnt_cur = ((void*)0);
}
