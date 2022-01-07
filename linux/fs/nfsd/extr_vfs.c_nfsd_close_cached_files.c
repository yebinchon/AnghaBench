
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;
struct dentry {int dummy; } ;


 scalar_t__ S_ISREG (int ) ;
 struct inode* d_inode (struct dentry*) ;
 int nfsd_file_close_inode_sync (struct inode*) ;

__attribute__((used)) static void
nfsd_close_cached_files(struct dentry *dentry)
{
 struct inode *inode = d_inode(dentry);

 if (inode && S_ISREG(inode->i_mode))
  nfsd_file_close_inode_sync(inode);
}
