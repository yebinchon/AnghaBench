
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


union xfs_btree_ptr {int s; int l; } ;
struct xchk_btree {TYPE_1__* cur; int sc; } ;
struct TYPE_4__ {int bc_flags; int bc_nlevels; } ;


 int XFS_BTREE_LONG_PTRS ;
 int XFS_BTREE_ROOT_IN_INODE ;
 int be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 int xchk_btree_set_corrupt (int ,TYPE_1__*,int) ;
 int xfs_btree_check_lptr (TYPE_1__*,int ,int) ;
 int xfs_btree_check_sptr (TYPE_1__*,int ,int) ;

__attribute__((used)) static bool
xchk_btree_ptr_ok(
 struct xchk_btree *bs,
 int level,
 union xfs_btree_ptr *ptr)
{
 bool res;


 if ((bs->cur->bc_flags & XFS_BTREE_ROOT_IN_INODE) &&
     level == bs->cur->bc_nlevels)
  return 1;


 if (bs->cur->bc_flags & XFS_BTREE_LONG_PTRS)
  res = xfs_btree_check_lptr(bs->cur, be64_to_cpu(ptr->l), level);
 else
  res = xfs_btree_check_sptr(bs->cur, be32_to_cpu(ptr->s), level);
 if (!res)
  xchk_btree_set_corrupt(bs->sc, bs->cur, level);

 return res;
}
