
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xfs_trans {int dummy; } ;
struct xfs_buf {int dummy; } ;
struct TYPE_3__ {struct xfs_buf* agbp; } ;
struct TYPE_4__ {TYPE_1__ a; } ;
struct xfs_btree_cur {TYPE_2__ bc_private; } ;


 int xfs_btree_del_cursor (struct xfs_btree_cur*,int) ;
 int xfs_trans_brelse (struct xfs_trans*,struct xfs_buf*) ;

void
xfs_rmap_finish_one_cleanup(
 struct xfs_trans *tp,
 struct xfs_btree_cur *rcur,
 int error)
{
 struct xfs_buf *agbp;

 if (rcur == ((void*)0))
  return;
 agbp = rcur->bc_private.a.agbp;
 xfs_btree_del_cursor(rcur, error);
 if (error)
  xfs_trans_brelse(tp, agbp);
}
