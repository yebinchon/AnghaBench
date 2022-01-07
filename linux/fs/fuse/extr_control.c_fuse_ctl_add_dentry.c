
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode_operations {int dummy; } ;
struct inode {int i_mode; struct fuse_conn* i_private; struct file_operations const* i_fop; struct inode_operations const* i_op; int i_ctime; int i_mtime; int i_atime; int i_gid; int i_uid; int i_ino; } ;
struct fuse_conn {scalar_t__ ctl_ndents; struct dentry** ctl_dentry; int group_id; int user_id; } ;
struct file_operations {int dummy; } ;
struct dentry {int dummy; } ;


 int BUG_ON (int) ;
 scalar_t__ FUSE_CTL_NUM_DENTRIES ;
 int current_time (struct inode*) ;
 int d_add (struct dentry*,struct inode*) ;
 struct dentry* d_alloc_name (struct dentry*,char const*) ;
 int dput (struct dentry*) ;
 int fuse_control_sb ;
 int get_next_ino () ;
 struct inode* new_inode (int ) ;
 int set_nlink (struct inode*,int) ;

__attribute__((used)) static struct dentry *fuse_ctl_add_dentry(struct dentry *parent,
       struct fuse_conn *fc,
       const char *name,
       int mode, int nlink,
       const struct inode_operations *iop,
       const struct file_operations *fop)
{
 struct dentry *dentry;
 struct inode *inode;

 BUG_ON(fc->ctl_ndents >= FUSE_CTL_NUM_DENTRIES);
 dentry = d_alloc_name(parent, name);
 if (!dentry)
  return ((void*)0);

 inode = new_inode(fuse_control_sb);
 if (!inode) {
  dput(dentry);
  return ((void*)0);
 }

 inode->i_ino = get_next_ino();
 inode->i_mode = mode;
 inode->i_uid = fc->user_id;
 inode->i_gid = fc->group_id;
 inode->i_atime = inode->i_mtime = inode->i_ctime = current_time(inode);

 if (iop)
  inode->i_op = iop;
 inode->i_fop = fop;
 set_nlink(inode, nlink);
 inode->i_private = fc;
 d_add(dentry, inode);

 fc->ctl_dentry[fc->ctl_ndents++] = dentry;

 return dentry;
}
