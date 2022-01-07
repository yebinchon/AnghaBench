
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union xfs_btree_rec {int dummy; } xfs_btree_rec ;
typedef union xfs_btree_ptr {int dummy; } xfs_btree_ptr ;
typedef union xfs_btree_key {int dummy; } xfs_btree_key ;
struct xfs_btree_cur {int bc_nlevels; TYPE_1__* bc_ops; int bc_mp; } ;
struct TYPE_2__ {int (* update_cursor ) (struct xfs_btree_cur*,struct xfs_btree_cur*) ;int (* init_key_from_rec ) (union xfs_btree_key*,union xfs_btree_rec*) ;int (* init_rec_from_cur ) (struct xfs_btree_cur*,union xfs_btree_rec*) ;} ;


 int XFS_BTREE_ERROR ;
 int XFS_BTREE_NOERROR ;
 int XFS_WANT_CORRUPTED_GOTO (int ,int,int ) ;
 int error0 ;
 int stub1 (struct xfs_btree_cur*,union xfs_btree_rec*) ;
 int stub2 (union xfs_btree_key*,union xfs_btree_rec*) ;
 int stub3 (struct xfs_btree_cur*,struct xfs_btree_cur*) ;
 int xfs_btree_del_cursor (struct xfs_btree_cur*,int ) ;
 int xfs_btree_insrec (struct xfs_btree_cur*,int,union xfs_btree_ptr*,union xfs_btree_rec*,union xfs_btree_key*,struct xfs_btree_cur**,int*) ;
 scalar_t__ xfs_btree_ptr_is_null (struct xfs_btree_cur*,union xfs_btree_ptr*) ;
 int xfs_btree_set_ptr_null (struct xfs_btree_cur*,union xfs_btree_ptr*) ;

int
xfs_btree_insert(
 struct xfs_btree_cur *cur,
 int *stat)
{
 int error;
 int i;
 int level;
 union xfs_btree_ptr nptr;
 struct xfs_btree_cur *ncur;
 struct xfs_btree_cur *pcur;
 union xfs_btree_key bkey;
 union xfs_btree_key *key;
 union xfs_btree_rec rec;

 level = 0;
 ncur = ((void*)0);
 pcur = cur;
 key = &bkey;

 xfs_btree_set_ptr_null(cur, &nptr);


 cur->bc_ops->init_rec_from_cur(cur, &rec);
 cur->bc_ops->init_key_from_rec(key, &rec);






 do {




  error = xfs_btree_insrec(pcur, level, &nptr, &rec, key,
    &ncur, &i);
  if (error) {
   if (pcur != cur)
    xfs_btree_del_cursor(pcur, XFS_BTREE_ERROR);
   goto error0;
  }

  XFS_WANT_CORRUPTED_GOTO(cur->bc_mp, i == 1, error0);
  level++;






  if (pcur != cur &&
      (ncur || xfs_btree_ptr_is_null(cur, &nptr))) {

   if (cur->bc_ops->update_cursor)
    cur->bc_ops->update_cursor(pcur, cur);
   cur->bc_nlevels = pcur->bc_nlevels;
   xfs_btree_del_cursor(pcur, XFS_BTREE_NOERROR);
  }

  if (ncur) {
   pcur = ncur;
   ncur = ((void*)0);
  }
 } while (!xfs_btree_ptr_is_null(cur, &nptr));

 *stat = i;
 return 0;
error0:
 return error;
}
