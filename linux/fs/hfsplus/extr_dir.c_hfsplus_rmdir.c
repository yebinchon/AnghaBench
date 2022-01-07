
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_size; int i_ctime; int i_ino; int i_sb; } ;
struct hfsplus_sb_info {int vh_mutex; } ;
struct dentry {int d_name; } ;


 int ENOTEMPTY ;
 struct hfsplus_sb_info* HFSPLUS_SB (int ) ;
 int clear_nlink (struct inode*) ;
 int current_time (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int hfsplus_delete_cat (int ,struct inode*,int *) ;
 int hfsplus_delete_inode (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int hfsplus_rmdir(struct inode *dir, struct dentry *dentry)
{
 struct hfsplus_sb_info *sbi = HFSPLUS_SB(dir->i_sb);
 struct inode *inode = d_inode(dentry);
 int res;

 if (inode->i_size != 2)
  return -ENOTEMPTY;

 mutex_lock(&sbi->vh_mutex);
 res = hfsplus_delete_cat(inode->i_ino, dir, &dentry->d_name);
 if (res)
  goto out;
 clear_nlink(inode);
 inode->i_ctime = current_time(inode);
 hfsplus_delete_inode(inode);
 mark_inode_dirty(inode);
out:
 mutex_unlock(&sbi->vh_mutex);
 return res;
}
