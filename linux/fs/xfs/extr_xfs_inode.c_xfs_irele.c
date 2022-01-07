
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_inode {int dummy; } ;


 int VFS_I (struct xfs_inode*) ;
 int _RET_IP_ ;
 int iput (int ) ;
 int trace_xfs_irele (struct xfs_inode*,int ) ;

void
xfs_irele(
 struct xfs_inode *ip)
{
 trace_xfs_irele(ip, _RET_IP_);
 iput(VFS_I(ip));
}
