
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct fat_slot_info {int dummy; } ;
struct TYPE_3__ {int len; int name; } ;
struct dentry {TYPE_1__ d_name; } ;
struct TYPE_4__ {int s_lock; } ;


 TYPE_2__* MSDOS_SB (struct super_block*) ;
 int S_CTIME ;
 int clear_nlink (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int fat_detach (struct inode*) ;
 int fat_flush_inodes (struct super_block*,struct inode*,struct inode*) ;
 int fat_remove_entries (struct inode*,struct fat_slot_info*) ;
 int fat_truncate_time (struct inode*,int *,int ) ;
 int msdos_find (struct inode*,int ,int ,struct fat_slot_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int msdos_unlink(struct inode *dir, struct dentry *dentry)
{
 struct inode *inode = d_inode(dentry);
 struct super_block *sb = inode->i_sb;
 struct fat_slot_info sinfo;
 int err;

 mutex_lock(&MSDOS_SB(sb)->s_lock);
 err = msdos_find(dir, dentry->d_name.name, dentry->d_name.len, &sinfo);
 if (err)
  goto out;

 err = fat_remove_entries(dir, &sinfo);
 if (err)
  goto out;
 clear_nlink(inode);
 fat_truncate_time(inode, ((void*)0), S_CTIME);
 fat_detach(inode);
out:
 mutex_unlock(&MSDOS_SB(sb)->s_lock);
 if (!err)
  err = fat_flush_inodes(sb, dir, inode);

 return err;
}
