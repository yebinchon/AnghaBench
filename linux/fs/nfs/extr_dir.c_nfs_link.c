
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct dentry {int d_name; } ;
struct TYPE_2__ {int (* link ) (struct inode*,struct inode*,int *) ;} ;


 TYPE_1__* NFS_PROTO (struct inode*) ;
 int VFS ;
 int d_add (struct dentry*,struct inode*) ;
 int d_drop (struct dentry*) ;
 struct inode* d_inode (struct dentry*) ;
 int dfprintk (int ,char*,struct dentry*,struct dentry*) ;
 int ihold (struct inode*) ;
 int stub1 (struct inode*,struct inode*,int *) ;
 int trace_nfs_link_enter (struct inode*,struct inode*,struct dentry*) ;
 int trace_nfs_link_exit (struct inode*,struct inode*,struct dentry*,int) ;

int
nfs_link(struct dentry *old_dentry, struct inode *dir, struct dentry *dentry)
{
 struct inode *inode = d_inode(old_dentry);
 int error;

 dfprintk(VFS, "NFS: link(%pd2 -> %pd2)\n",
  old_dentry, dentry);

 trace_nfs_link_enter(inode, dir, dentry);
 d_drop(dentry);
 error = NFS_PROTO(dir)->link(inode, dir, &dentry->d_name);
 if (error == 0) {
  ihold(inode);
  d_add(dentry, inode);
 }
 trace_nfs_link_exit(inode, dir, dentry, error);
 return error;
}
