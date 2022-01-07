
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct fat_slot_info {int dummy; } ;
struct dentry {int d_name; } ;
struct TYPE_2__ {int s_lock; } ;


 TYPE_1__* MSDOS_SB (struct super_block*) ;
 int S_ATIME ;
 int S_MTIME ;
 int clear_nlink (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int drop_nlink (struct inode*) ;
 int fat_detach (struct inode*) ;
 int fat_dir_empty (struct inode*) ;
 int fat_remove_entries (struct inode*,struct fat_slot_info*) ;
 int fat_truncate_time (struct inode*,int *,int) ;
 int inode_query_iversion (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vfat_d_version_set (struct dentry*,int ) ;
 int vfat_find (struct inode*,int *,struct fat_slot_info*) ;

__attribute__((used)) static int vfat_rmdir(struct inode *dir, struct dentry *dentry)
{
 struct inode *inode = d_inode(dentry);
 struct super_block *sb = dir->i_sb;
 struct fat_slot_info sinfo;
 int err;

 mutex_lock(&MSDOS_SB(sb)->s_lock);

 err = fat_dir_empty(inode);
 if (err)
  goto out;
 err = vfat_find(dir, &dentry->d_name, &sinfo);
 if (err)
  goto out;

 err = fat_remove_entries(dir, &sinfo);
 if (err)
  goto out;
 drop_nlink(dir);

 clear_nlink(inode);
 fat_truncate_time(inode, ((void*)0), S_ATIME|S_MTIME);
 fat_detach(inode);
 vfat_d_version_set(dentry, inode_query_iversion(dir));
out:
 mutex_unlock(&MSDOS_SB(sb)->s_lock);

 return err;
}
