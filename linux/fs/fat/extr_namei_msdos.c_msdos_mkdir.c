
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int umode_t ;
struct timespec64 {int dummy; } ;
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct fat_slot_info {int bh; int i_pos; int de; } ;
struct TYPE_3__ {char* name; int len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct TYPE_4__ {int s_lock; int options; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct inode*) ;
 int MSDOS_NAME ;
 TYPE_2__* MSDOS_SB (struct super_block*) ;
 int PTR_ERR (struct inode*) ;
 int S_ATIME ;
 int S_CTIME ;
 int S_MTIME ;
 int brelse (int ) ;
 struct timespec64 current_time (struct inode*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int fat_alloc_new_dir (struct inode*,struct timespec64*) ;
 struct inode* fat_build_inode (struct super_block*,int ,int ) ;
 int fat_flush_inodes (struct super_block*,struct inode*,struct inode*) ;
 int fat_free_clusters (struct inode*,int) ;
 int fat_scan (struct inode*,unsigned char*,struct fat_slot_info*) ;
 int fat_truncate_time (struct inode*,struct timespec64*,int) ;
 int inc_nlink (struct inode*) ;
 int msdos_add_entry (struct inode*,unsigned char*,int,int,int,struct timespec64*,struct fat_slot_info*) ;
 int msdos_format_name (char*,int ,unsigned char*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_nlink (struct inode*,int) ;

__attribute__((used)) static int msdos_mkdir(struct inode *dir, struct dentry *dentry, umode_t mode)
{
 struct super_block *sb = dir->i_sb;
 struct fat_slot_info sinfo;
 struct inode *inode;
 unsigned char msdos_name[MSDOS_NAME];
 struct timespec64 ts;
 int err, is_hid, cluster;

 mutex_lock(&MSDOS_SB(sb)->s_lock);

 err = msdos_format_name(dentry->d_name.name, dentry->d_name.len,
    msdos_name, &MSDOS_SB(sb)->options);
 if (err)
  goto out;
 is_hid = (dentry->d_name.name[0] == '.') && (msdos_name[0] != '.');

 if (!fat_scan(dir, msdos_name, &sinfo)) {
  brelse(sinfo.bh);
  err = -EINVAL;
  goto out;
 }

 ts = current_time(dir);
 cluster = fat_alloc_new_dir(dir, &ts);
 if (cluster < 0) {
  err = cluster;
  goto out;
 }
 err = msdos_add_entry(dir, msdos_name, 1, is_hid, cluster, &ts, &sinfo);
 if (err)
  goto out_free;
 inc_nlink(dir);

 inode = fat_build_inode(sb, sinfo.de, sinfo.i_pos);
 brelse(sinfo.bh);
 if (IS_ERR(inode)) {
  err = PTR_ERR(inode);

  goto out;
 }
 set_nlink(inode, 2);
 fat_truncate_time(inode, &ts, S_ATIME|S_CTIME|S_MTIME);


 d_instantiate(dentry, inode);

 mutex_unlock(&MSDOS_SB(sb)->s_lock);
 fat_flush_inodes(sb, dir, inode);
 return 0;

out_free:
 fat_free_clusters(dir, cluster);
out:
 mutex_unlock(&MSDOS_SB(sb)->s_lock);
 return err;
}
