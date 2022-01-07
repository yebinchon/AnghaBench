
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct inode {int i_mode; int i_ctime; int i_mtime; int i_atime; int i_ino; } ;
struct dentry {TYPE_2__* d_inode; TYPE_1__* d_sb; } ;
struct TYPE_6__ {int mnt; int dentry; } ;
struct TYPE_5__ {int i_sb; } ;
struct TYPE_4__ {int s_type; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int MEM_MAJOR ;
 int MKDEV (int ,int) ;
 int NULL_FILE_NAME ;
 int PTR_ERR (struct dentry*) ;
 int S_IFCHR ;
 int S_IRUGO ;
 int S_IWUGO ;
 TYPE_3__ aa_null ;
 int current_time (struct inode*) ;
 int d_inode (struct dentry*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int dget (struct dentry*) ;
 int dput (struct dentry*) ;
 int get_next_ino () ;
 int init_special_inode (struct inode*,int,int ) ;
 int inode_lock (int ) ;
 int inode_unlock (int ) ;
 struct dentry* lookup_one_len (int ,struct dentry*,int ) ;
 int mntget (struct vfsmount*) ;
 struct inode* new_inode (int ) ;
 int simple_pin_fs (int ,struct vfsmount**,int*) ;
 int simple_release_fs (struct vfsmount**,int*) ;
 int strlen (int ) ;

__attribute__((used)) static int aa_mk_null_file(struct dentry *parent)
{
 struct vfsmount *mount = ((void*)0);
 struct dentry *dentry;
 struct inode *inode;
 int count = 0;
 int error = simple_pin_fs(parent->d_sb->s_type, &mount, &count);

 if (error)
  return error;

 inode_lock(d_inode(parent));
 dentry = lookup_one_len(NULL_FILE_NAME, parent, strlen(NULL_FILE_NAME));
 if (IS_ERR(dentry)) {
  error = PTR_ERR(dentry);
  goto out;
 }
 inode = new_inode(parent->d_inode->i_sb);
 if (!inode) {
  error = -ENOMEM;
  goto out1;
 }

 inode->i_ino = get_next_ino();
 inode->i_mode = S_IFCHR | S_IRUGO | S_IWUGO;
 inode->i_atime = inode->i_mtime = inode->i_ctime = current_time(inode);
 init_special_inode(inode, S_IFCHR | S_IRUGO | S_IWUGO,
      MKDEV(MEM_MAJOR, 3));
 d_instantiate(dentry, inode);
 aa_null.dentry = dget(dentry);
 aa_null.mnt = mntget(mount);

 error = 0;

out1:
 dput(dentry);
out:
 inode_unlock(d_inode(parent));
 simple_release_fs(&mount, &count);
 return error;
}
