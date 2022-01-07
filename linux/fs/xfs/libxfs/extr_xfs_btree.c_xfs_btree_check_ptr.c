
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


union xfs_btree_ptr {int s; int l; } ;
struct TYPE_7__ {int agno; } ;
struct TYPE_6__ {int whichfork; TYPE_1__* ip; } ;
struct TYPE_8__ {TYPE_3__ a; TYPE_2__ b; } ;
struct xfs_btree_cur {int bc_flags; int bc_btnum; TYPE_4__ bc_private; int bc_mp; } ;
struct TYPE_5__ {int i_ino; } ;


 int EFSCORRUPTED ;
 int XFS_BTREE_LONG_PTRS ;
 int be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 scalar_t__ xfs_btree_check_lptr (struct xfs_btree_cur*,int ,int) ;
 scalar_t__ xfs_btree_check_sptr (struct xfs_btree_cur*,int ,int) ;
 int xfs_err (int ,char*,int ,int ,int,int,...) ;

__attribute__((used)) static int
xfs_btree_check_ptr(
 struct xfs_btree_cur *cur,
 union xfs_btree_ptr *ptr,
 int index,
 int level)
{
 if (cur->bc_flags & XFS_BTREE_LONG_PTRS) {
  if (xfs_btree_check_lptr(cur, be64_to_cpu((&ptr->l)[index]),
    level))
   return 0;
  xfs_err(cur->bc_mp,
"Inode %llu fork %d: Corrupt btree %d pointer at level %d index %d.",
    cur->bc_private.b.ip->i_ino,
    cur->bc_private.b.whichfork, cur->bc_btnum,
    level, index);
 } else {
  if (xfs_btree_check_sptr(cur, be32_to_cpu((&ptr->s)[index]),
    level))
   return 0;
  xfs_err(cur->bc_mp,
"AG %u: Corrupt btree %d pointer at level %d index %d.",
    cur->bc_private.a.agno, cur->bc_btnum,
    level, index);
 }

 return -EFSCORRUPTED;
}
