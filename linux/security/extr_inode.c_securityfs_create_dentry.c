
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int umode_t ;
struct inode_operations {int dummy; } ;
struct inode {int i_mode; struct file_operations const* i_fop; void* i_link; struct inode_operations const* i_op; void* i_private; int i_ctime; int i_mtime; int i_atime; int i_ino; int i_sb; } ;
struct file_operations {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {struct dentry* mnt_root; } ;


 int EEXIST ;
 int ENOMEM ;
 struct dentry* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int S_IALLUGO ;
 int S_IFMT ;
 int S_IFREG ;
 scalar_t__ S_ISDIR (int) ;
 scalar_t__ S_ISLNK (int) ;
 int current_time (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 scalar_t__ d_really_is_positive (struct dentry*) ;
 int dget (struct dentry*) ;
 int dput (struct dentry*) ;
 int fs_type ;
 int get_next_ino () ;
 int inc_nlink (struct inode*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 struct dentry* lookup_one_len (char const*,struct dentry*,int ) ;
 TYPE_1__* mount ;
 int mount_count ;
 struct inode* new_inode (int ) ;
 int pr_debug (char*,char const*) ;
 struct inode_operations const simple_dir_inode_operations ;
 struct file_operations const simple_dir_operations ;
 int simple_pin_fs (int *,TYPE_1__**,int *) ;
 int simple_release_fs (TYPE_1__**,int *) ;
 struct inode_operations const simple_symlink_inode_operations ;
 int strlen (char const*) ;

__attribute__((used)) static struct dentry *securityfs_create_dentry(const char *name, umode_t mode,
     struct dentry *parent, void *data,
     const struct file_operations *fops,
     const struct inode_operations *iops)
{
 struct dentry *dentry;
 struct inode *dir, *inode;
 int error;

 if (!(mode & S_IFMT))
  mode = (mode & S_IALLUGO) | S_IFREG;

 pr_debug("securityfs: creating file '%s'\n",name);

 error = simple_pin_fs(&fs_type, &mount, &mount_count);
 if (error)
  return ERR_PTR(error);

 if (!parent)
  parent = mount->mnt_root;

 dir = d_inode(parent);

 inode_lock(dir);
 dentry = lookup_one_len(name, parent, strlen(name));
 if (IS_ERR(dentry))
  goto out;

 if (d_really_is_positive(dentry)) {
  error = -EEXIST;
  goto out1;
 }

 inode = new_inode(dir->i_sb);
 if (!inode) {
  error = -ENOMEM;
  goto out1;
 }

 inode->i_ino = get_next_ino();
 inode->i_mode = mode;
 inode->i_atime = inode->i_mtime = inode->i_ctime = current_time(inode);
 inode->i_private = data;
 if (S_ISDIR(mode)) {
  inode->i_op = &simple_dir_inode_operations;
  inode->i_fop = &simple_dir_operations;
  inc_nlink(inode);
  inc_nlink(dir);
 } else if (S_ISLNK(mode)) {
  inode->i_op = iops ? iops : &simple_symlink_inode_operations;
  inode->i_link = data;
 } else {
  inode->i_fop = fops;
 }
 d_instantiate(dentry, inode);
 dget(dentry);
 inode_unlock(dir);
 return dentry;

out1:
 dput(dentry);
 dentry = ERR_PTR(error);
out:
 inode_unlock(dir);
 simple_release_fs(&mount, &mount_count);
 return dentry;
}
