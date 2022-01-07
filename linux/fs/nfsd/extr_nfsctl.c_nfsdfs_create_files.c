
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_descr {int mode; int ops; scalar_t__* name; } ;
struct inode {int i_private; int i_fop; int i_sb; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 int S_IFREG ;
 int __get_nfsdfs_client (struct inode*) ;
 int d_add (struct dentry*,struct inode*) ;
 struct dentry* d_alloc_name (struct dentry*,scalar_t__*) ;
 struct inode* d_inode (struct dentry*) ;
 int dput (struct dentry*) ;
 int fsnotify_create (struct inode*,struct dentry*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 struct inode* nfsd_get_inode (int ,int) ;
 int nfsdfs_remove_files (struct dentry*) ;

__attribute__((used)) static int nfsdfs_create_files(struct dentry *root,
     const struct tree_descr *files)
{
 struct inode *dir = d_inode(root);
 struct inode *inode;
 struct dentry *dentry;
 int i;

 inode_lock(dir);
 for (i = 0; files->name && files->name[0]; i++, files++) {
  if (!files->name)
   continue;
  dentry = d_alloc_name(root, files->name);
  if (!dentry)
   goto out;
  inode = nfsd_get_inode(d_inode(root)->i_sb,
     S_IFREG | files->mode);
  if (!inode) {
   dput(dentry);
   goto out;
  }
  inode->i_fop = files->ops;
  inode->i_private = __get_nfsdfs_client(dir);
  d_add(dentry, inode);
  fsnotify_create(dir, dentry);
 }
 inode_unlock(dir);
 return 0;
out:
 nfsdfs_remove_files(root);
 inode_unlock(dir);
 return -ENOMEM;
}
