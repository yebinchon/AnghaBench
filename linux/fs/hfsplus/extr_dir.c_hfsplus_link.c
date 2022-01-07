
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct qstr {char* name; int len; } ;
struct inode {scalar_t__ i_ino; int i_sb; int i_ctime; int i_mode; } ;
struct hfsplus_sb_info {int vh_mutex; int file_count; int next_cnid; int hidden_dir; } ;
struct dentry {int d_name; void* d_fsdata; struct dentry* d_parent; } ;
typedef int cnid ;
struct TYPE_2__ {scalar_t__ linkid; } ;


 int EEXIST ;
 int EPERM ;
 TYPE_1__* HFSPLUS_I (struct inode*) ;
 scalar_t__ HFSPLUS_IS_RSRC (struct inode*) ;
 struct hfsplus_sb_info* HFSPLUS_SB (int ) ;
 int S_ISREG (int ) ;
 int current_time (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int get_random_bytes (scalar_t__*,int) ;
 int hfsplus_create_cat (scalar_t__,struct inode*,int *,struct inode*) ;
 int hfsplus_instantiate (struct dentry*,struct inode*,scalar_t__) ;
 int hfsplus_mark_mdb_dirty (int ) ;
 int hfsplus_rename_cat (scalar_t__,struct inode*,int *,int ,struct qstr*) ;
 int ihold (struct inode*) ;
 int inc_nlink (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,scalar_t__) ;

__attribute__((used)) static int hfsplus_link(struct dentry *src_dentry, struct inode *dst_dir,
   struct dentry *dst_dentry)
{
 struct hfsplus_sb_info *sbi = HFSPLUS_SB(dst_dir->i_sb);
 struct inode *inode = d_inode(src_dentry);
 struct inode *src_dir = d_inode(src_dentry->d_parent);
 struct qstr str;
 char name[32];
 u32 cnid, id;
 int res;

 if (HFSPLUS_IS_RSRC(inode))
  return -EPERM;
 if (!S_ISREG(inode->i_mode))
  return -EPERM;

 mutex_lock(&sbi->vh_mutex);
 if (inode->i_ino == (u32)(unsigned long)src_dentry->d_fsdata) {
  for (;;) {
   get_random_bytes(&id, sizeof(cnid));
   id &= 0x3fffffff;
   str.name = name;
   str.len = sprintf(name, "iNode%d", id);
   res = hfsplus_rename_cat(inode->i_ino,
       src_dir, &src_dentry->d_name,
       sbi->hidden_dir, &str);
   if (!res)
    break;
   if (res != -EEXIST)
    goto out;
  }
  HFSPLUS_I(inode)->linkid = id;
  cnid = sbi->next_cnid++;
  src_dentry->d_fsdata = (void *)(unsigned long)cnid;
  res = hfsplus_create_cat(cnid, src_dir,
   &src_dentry->d_name, inode);
  if (res)

   goto out;
  sbi->file_count++;
 }
 cnid = sbi->next_cnid++;
 res = hfsplus_create_cat(cnid, dst_dir, &dst_dentry->d_name, inode);
 if (res)
  goto out;

 inc_nlink(inode);
 hfsplus_instantiate(dst_dentry, inode, cnid);
 ihold(inode);
 inode->i_ctime = current_time(inode);
 mark_inode_dirty(inode);
 sbi->file_count++;
 hfsplus_mark_mdb_dirty(dst_dir->i_sb);
out:
 mutex_unlock(&sbi->vh_mutex);
 return res;
}
