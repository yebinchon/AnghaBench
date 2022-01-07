
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct qstr {char* name; int len; } ;
struct inode {scalar_t__ i_ino; scalar_t__ i_nlink; int i_ctime; int i_flags; int i_sb; } ;
struct hfsplus_sb_info {int vh_mutex; int file_count; struct inode* hidden_dir; } ;
struct dentry {int d_name; scalar_t__ d_fsdata; } ;
struct TYPE_2__ {int opencnt; } ;


 int EPERM ;
 TYPE_1__* HFSPLUS_I (struct inode*) ;
 scalar_t__ HFSPLUS_IS_RSRC (struct inode*) ;
 struct hfsplus_sb_info* HFSPLUS_SB (int ) ;
 int S_DEAD ;
 scalar_t__ atomic_read (int *) ;
 int clear_nlink (struct inode*) ;
 int current_time (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int drop_nlink (struct inode*) ;
 int hfsplus_delete_cat (scalar_t__,struct inode*,int *) ;
 int hfsplus_delete_inode (struct inode*) ;
 int hfsplus_rename_cat (scalar_t__,struct inode*,int *,struct inode*,struct qstr*) ;
 int mark_inode_dirty (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,scalar_t__) ;

__attribute__((used)) static int hfsplus_unlink(struct inode *dir, struct dentry *dentry)
{
 struct hfsplus_sb_info *sbi = HFSPLUS_SB(dir->i_sb);
 struct inode *inode = d_inode(dentry);
 struct qstr str;
 char name[32];
 u32 cnid;
 int res;

 if (HFSPLUS_IS_RSRC(inode))
  return -EPERM;

 mutex_lock(&sbi->vh_mutex);
 cnid = (u32)(unsigned long)dentry->d_fsdata;
 if (inode->i_ino == cnid &&
     atomic_read(&HFSPLUS_I(inode)->opencnt)) {
  str.name = name;
  str.len = sprintf(name, "temp%lu", inode->i_ino);
  res = hfsplus_rename_cat(inode->i_ino,
      dir, &dentry->d_name,
      sbi->hidden_dir, &str);
  if (!res) {
   inode->i_flags |= S_DEAD;
   drop_nlink(inode);
  }
  goto out;
 }
 res = hfsplus_delete_cat(cnid, dir, &dentry->d_name);
 if (res)
  goto out;

 if (inode->i_nlink > 0)
  drop_nlink(inode);
 if (inode->i_ino == cnid)
  clear_nlink(inode);
 if (!inode->i_nlink) {
  if (inode->i_ino != cnid) {
   sbi->file_count--;
   if (!atomic_read(&HFSPLUS_I(inode)->opencnt)) {
    res = hfsplus_delete_cat(inode->i_ino,
        sbi->hidden_dir,
        ((void*)0));
    if (!res)
     hfsplus_delete_inode(inode);
   } else
    inode->i_flags |= S_DEAD;
  } else
   hfsplus_delete_inode(inode);
 } else
  sbi->file_count--;
 inode->i_ctime = current_time(inode);
 mark_inode_dirty(inode);
out:
 mutex_unlock(&sbi->vh_mutex);
 return res;
}
