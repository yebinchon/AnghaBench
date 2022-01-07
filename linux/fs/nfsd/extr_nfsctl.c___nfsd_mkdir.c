
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct nfsdfs_client {int cl_ref; } ;
struct inode {struct nfsdfs_client* i_private; int i_sb; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 int d_add (struct dentry*,struct inode*) ;
 int fsnotify_mkdir (struct inode*,struct dentry*) ;
 int inc_nlink (struct inode*) ;
 int kref_get (int *) ;
 struct inode* nfsd_get_inode (int ,int ) ;

__attribute__((used)) static int __nfsd_mkdir(struct inode *dir, struct dentry *dentry, umode_t mode, struct nfsdfs_client *ncl)
{
 struct inode *inode;

 inode = nfsd_get_inode(dir->i_sb, mode);
 if (!inode)
  return -ENOMEM;
 if (ncl) {
  inode->i_private = ncl;
  kref_get(&ncl->cl_ref);
 }
 d_add(dentry, inode);
 inc_nlink(dir);
 fsnotify_mkdir(dir, dentry);
 return 0;
}
