
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_inode {int i_mount; int i_pincount; } ;
struct TYPE_2__ {int i_rcu; } ;


 int ASSERT (int) ;
 TYPE_1__* VFS_I (struct xfs_inode*) ;
 int XFS_STATS_DEC (int ,int ) ;
 scalar_t__ atomic_read (int *) ;
 int call_rcu (int *,int ) ;
 int vn_active ;
 int xfs_inode_free_callback ;

__attribute__((used)) static void
__xfs_inode_free(
 struct xfs_inode *ip)
{

 ASSERT(atomic_read(&ip->i_pincount) == 0);
 XFS_STATS_DEC(ip->i_mount, vn_active);

 call_rcu(&VFS_I(ip)->i_rcu, xfs_inode_free_callback);
}
