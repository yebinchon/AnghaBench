
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xfs_ino_t ;
struct xfs_trans {int dummy; } ;
struct TYPE_6__ {scalar_t__ di_format; scalar_t__ di_aformat; } ;
struct xfs_inode {int i_mount; TYPE_3__ i_d; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {TYPE_1__ b; } ;
struct xfs_btree_cur {TYPE_2__ bc_private; } ;
struct list_head {int dummy; } ;


 int ASSERT (int) ;
 int ENOMEM ;
 int XFS_BTCUR_BPRV_INVALID_OWNER ;
 int XFS_DATA_FORK ;
 scalar_t__ XFS_DINODE_FMT_BTREE ;
 struct xfs_btree_cur* xfs_bmbt_init_cursor (int ,struct xfs_trans*,struct xfs_inode*,int) ;
 int xfs_btree_change_owner (struct xfs_btree_cur*,int ,struct list_head*) ;
 int xfs_btree_del_cursor (struct xfs_btree_cur*,int) ;

int
xfs_bmbt_change_owner(
 struct xfs_trans *tp,
 struct xfs_inode *ip,
 int whichfork,
 xfs_ino_t new_owner,
 struct list_head *buffer_list)
{
 struct xfs_btree_cur *cur;
 int error;

 ASSERT(tp || buffer_list);
 ASSERT(!(tp && buffer_list));
 if (whichfork == XFS_DATA_FORK)
  ASSERT(ip->i_d.di_format == XFS_DINODE_FMT_BTREE);
 else
  ASSERT(ip->i_d.di_aformat == XFS_DINODE_FMT_BTREE);

 cur = xfs_bmbt_init_cursor(ip->i_mount, tp, ip, whichfork);
 if (!cur)
  return -ENOMEM;
 cur->bc_private.b.flags |= XFS_BTCUR_BPRV_INVALID_OWNER;

 error = xfs_btree_change_owner(cur, new_owner, buffer_list);
 xfs_btree_del_cursor(cur, error);
 return error;
}
