
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct dentry {int d_flags; struct dentry* d_parent; } ;
struct TYPE_2__ {int (* remove ) (struct inode*,struct dentry*) ;} ;


 int DCACHE_NFSFS_RENAMED ;
 int EBUSY ;
 int ENOENT ;
 TYPE_1__* NFS_PROTO (struct inode*) ;
 int VFS ;
 struct inode* d_inode (struct dentry*) ;
 int dfprintk (int ,char*,struct dentry*) ;
 int nfs_dentry_handle_enoent (struct dentry*) ;
 int nfs_drop_nlink (struct inode*) ;
 int stub1 (struct inode*,struct dentry*) ;
 int stub2 (struct inode*,struct dentry*) ;
 int trace_nfs_remove_enter (struct inode*,struct dentry*) ;
 int trace_nfs_remove_exit (struct inode*,struct dentry*,int) ;

__attribute__((used)) static int nfs_safe_remove(struct dentry *dentry)
{
 struct inode *dir = d_inode(dentry->d_parent);
 struct inode *inode = d_inode(dentry);
 int error = -EBUSY;

 dfprintk(VFS, "NFS: safe_remove(%pd2)\n", dentry);


 if (dentry->d_flags & DCACHE_NFSFS_RENAMED) {
  error = 0;
  goto out;
 }

 trace_nfs_remove_enter(dir, dentry);
 if (inode != ((void*)0)) {
  error = NFS_PROTO(dir)->remove(dir, dentry);
  if (error == 0)
   nfs_drop_nlink(inode);
 } else
  error = NFS_PROTO(dir)->remove(dir, dentry);
 if (error == -ENOENT)
  nfs_dentry_handle_enoent(dentry);
 trace_nfs_remove_exit(dir, dentry, error);
out:
 return error;
}
