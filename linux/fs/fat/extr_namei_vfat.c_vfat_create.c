
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct timespec64 {int dummy; } ;
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct fat_slot_info {int bh; int i_pos; int de; } ;
struct dentry {int d_name; } ;
struct TYPE_2__ {int s_lock; } ;


 scalar_t__ IS_ERR (struct inode*) ;
 TYPE_1__* MSDOS_SB (struct super_block*) ;
 int PTR_ERR (struct inode*) ;
 int S_ATIME ;
 int S_CTIME ;
 int S_MTIME ;
 int brelse (int ) ;
 struct timespec64 current_time (struct inode*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 struct inode* fat_build_inode (struct super_block*,int ,int ) ;
 int fat_truncate_time (struct inode*,struct timespec64*,int) ;
 int inode_inc_iversion (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vfat_add_entry (struct inode*,int *,int ,int ,struct timespec64*,struct fat_slot_info*) ;

__attribute__((used)) static int vfat_create(struct inode *dir, struct dentry *dentry, umode_t mode,
         bool excl)
{
 struct super_block *sb = dir->i_sb;
 struct inode *inode;
 struct fat_slot_info sinfo;
 struct timespec64 ts;
 int err;

 mutex_lock(&MSDOS_SB(sb)->s_lock);

 ts = current_time(dir);
 err = vfat_add_entry(dir, &dentry->d_name, 0, 0, &ts, &sinfo);
 if (err)
  goto out;
 inode_inc_iversion(dir);

 inode = fat_build_inode(sb, sinfo.de, sinfo.i_pos);
 brelse(sinfo.bh);
 if (IS_ERR(inode)) {
  err = PTR_ERR(inode);
  goto out;
 }
 inode_inc_iversion(inode);
 fat_truncate_time(inode, &ts, S_ATIME|S_CTIME|S_MTIME);


 d_instantiate(dentry, inode);
out:
 mutex_unlock(&MSDOS_SB(sb)->s_lock);
 return err;
}
