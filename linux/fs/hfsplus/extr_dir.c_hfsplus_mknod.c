
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int i_ino; int i_sb; } ;
struct hfsplus_sb_info {int vh_mutex; } ;
struct dentry {int d_name; } ;
typedef int dev_t ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 struct hfsplus_sb_info* HFSPLUS_SB (int ) ;
 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ S_ISFIFO (int ) ;
 scalar_t__ S_ISSOCK (int ) ;
 int clear_nlink (struct inode*) ;
 int hfsplus_create_cat (int ,struct inode*,int *,struct inode*) ;
 int hfsplus_delete_cat (int ,struct inode*,int *) ;
 int hfsplus_delete_inode (struct inode*) ;
 int hfsplus_init_security (struct inode*,struct inode*,int *) ;
 int hfsplus_instantiate (struct dentry*,struct inode*,int ) ;
 struct inode* hfsplus_new_inode (int ,struct inode*,int ) ;
 int init_special_inode (struct inode*,int ,int ) ;
 int iput (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int hfsplus_mknod(struct inode *dir, struct dentry *dentry,
    umode_t mode, dev_t rdev)
{
 struct hfsplus_sb_info *sbi = HFSPLUS_SB(dir->i_sb);
 struct inode *inode;
 int res = -ENOMEM;

 mutex_lock(&sbi->vh_mutex);
 inode = hfsplus_new_inode(dir->i_sb, dir, mode);
 if (!inode)
  goto out;

 if (S_ISBLK(mode) || S_ISCHR(mode) || S_ISFIFO(mode) || S_ISSOCK(mode))
  init_special_inode(inode, mode, rdev);

 res = hfsplus_create_cat(inode->i_ino, dir, &dentry->d_name, inode);
 if (res)
  goto failed_mknod;

 res = hfsplus_init_security(inode, dir, &dentry->d_name);
 if (res == -EOPNOTSUPP)
  res = 0;
 else if (res) {

  hfsplus_delete_cat(inode->i_ino, dir, &dentry->d_name);
  goto failed_mknod;
 }

 hfsplus_instantiate(dentry, inode, inode->i_ino);
 mark_inode_dirty(inode);
 goto out;

failed_mknod:
 clear_nlink(inode);
 hfsplus_delete_inode(inode);
 iput(inode);
out:
 mutex_unlock(&sbi->vh_mutex);
 return res;
}
