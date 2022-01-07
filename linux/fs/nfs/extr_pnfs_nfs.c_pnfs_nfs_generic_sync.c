
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int FLUSH_SYNC ;
 int nfs_commit_inode (struct inode*,int ) ;
 int pnfs_layoutcommit_inode (struct inode*,int) ;
 int pnfs_layoutcommit_outstanding (struct inode*) ;

int
pnfs_nfs_generic_sync(struct inode *inode, bool datasync)
{
 int ret;

 if (!pnfs_layoutcommit_outstanding(inode))
  return 0;
 ret = nfs_commit_inode(inode, FLUSH_SYNC);
 if (ret < 0)
  return ret;
 if (datasync)
  return 0;
 return pnfs_layoutcommit_inode(inode, 1);
}
