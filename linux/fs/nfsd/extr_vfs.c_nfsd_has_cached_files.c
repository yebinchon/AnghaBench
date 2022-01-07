
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;
struct dentry {int dummy; } ;


 scalar_t__ S_ISREG (int ) ;
 struct inode* d_inode (struct dentry*) ;
 int nfsd_file_is_cached (struct inode*) ;

__attribute__((used)) static bool
nfsd_has_cached_files(struct dentry *dentry)
{
 bool ret = 0;
 struct inode *inode = d_inode(dentry);

 if (inode && S_ISREG(inode->i_mode))
  ret = nfsd_file_is_cached(inode);
 return ret;
}
