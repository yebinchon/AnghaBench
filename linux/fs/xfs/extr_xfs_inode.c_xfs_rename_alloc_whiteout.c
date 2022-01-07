
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_inode {int dummy; } ;
struct TYPE_2__ {int i_state; } ;


 int I_LINKABLE ;
 int S_IFCHR ;
 TYPE_1__* VFS_I (struct xfs_inode*) ;
 int WHITEOUT_MODE ;
 int xfs_create_tmpfile (struct xfs_inode*,int,struct xfs_inode**) ;
 int xfs_finish_inode_setup (struct xfs_inode*) ;
 int xfs_setup_iops (struct xfs_inode*) ;

__attribute__((used)) static int
xfs_rename_alloc_whiteout(
 struct xfs_inode *dp,
 struct xfs_inode **wip)
{
 struct xfs_inode *tmpfile;
 int error;

 error = xfs_create_tmpfile(dp, S_IFCHR | WHITEOUT_MODE, &tmpfile);
 if (error)
  return error;






 xfs_setup_iops(tmpfile);
 xfs_finish_inode_setup(tmpfile);
 VFS_I(tmpfile)->i_state |= I_LINKABLE;

 *wip = tmpfile;
 return 0;
}
