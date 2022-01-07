
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int umode_t ;
struct super_block {int dummy; } ;
struct TYPE_7__ {int * a_ops; } ;
struct inode {int i_mode; int i_size; int i_blocks; TYPE_3__ i_data; int * i_fop; int * i_op; struct super_block* i_sb; void* i_ino; } ;
struct hpfs_inode_info {int i_ea_uid; int i_ea_gid; int i_ea_mode; int mmu_private; void* i_dno; void* i_parent_dir; } ;
struct TYPE_6__ {TYPE_1__* external; } ;
struct fnode {int file_size; TYPE_2__ u; int up; } ;
struct buffer_head {int dummy; } ;
typedef int __le32 ;
typedef int __le16 ;
struct TYPE_8__ {int sb_mode; int sb_chk; scalar_t__ sb_eas; } ;
struct TYPE_5__ {int disk_secno; } ;


 int S_IFDIR ;
 int S_IFLNK ;
 int S_IFREG ;
 scalar_t__ S_ISBLK (int) ;
 scalar_t__ S_ISCHR (int) ;
 scalar_t__ S_ISFIFO (int) ;
 scalar_t__ S_ISSOCK (int) ;
 int brelse (struct buffer_head*) ;
 scalar_t__ fnode_is_dir (struct fnode*) ;
 int hpfs_aops ;
 int hpfs_count_dnodes (struct super_block*,void*,int*,int*,int *) ;
 int hpfs_dir_iops ;
 int hpfs_dir_ops ;
 int hpfs_file_iops ;
 int hpfs_file_ops ;
 void* hpfs_get_ea (struct super_block*,struct fnode*,char*,int*) ;
 struct hpfs_inode_info* hpfs_i (struct inode*) ;
 struct fnode* hpfs_map_fnode (struct super_block*,void*,struct buffer_head**) ;
 TYPE_4__* hpfs_sb (struct super_block*) ;
 int hpfs_symlink_aops ;
 int i_gid_write (struct inode*,int) ;
 int i_uid_write (struct inode*,int) ;
 int init_special_inode (struct inode*,int,int ) ;
 int inode_nohighmem (struct inode*) ;
 int kfree (void*) ;
 int le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 int make_bad_inode (struct inode*) ;
 int new_decode_dev (int) ;
 int page_symlink_inode_operations ;
 int set_nlink (struct inode*,int) ;

void hpfs_read_inode(struct inode *i)
{
 struct buffer_head *bh;
 struct fnode *fnode;
 struct super_block *sb = i->i_sb;
 struct hpfs_inode_info *hpfs_inode = hpfs_i(i);
 void *ea;
 int ea_size;

 if (!(fnode = hpfs_map_fnode(sb, i->i_ino, &bh))) {





  make_bad_inode(i);
  return;
 }
 if (hpfs_sb(i->i_sb)->sb_eas) {
  if ((ea = hpfs_get_ea(i->i_sb, fnode, "UID", &ea_size))) {
   if (ea_size == 2) {
    i_uid_write(i, le16_to_cpu(*(__le16*)ea));
    hpfs_inode->i_ea_uid = 1;
   }
   kfree(ea);
  }
  if ((ea = hpfs_get_ea(i->i_sb, fnode, "GID", &ea_size))) {
   if (ea_size == 2) {
    i_gid_write(i, le16_to_cpu(*(__le16*)ea));
    hpfs_inode->i_ea_gid = 1;
   }
   kfree(ea);
  }
  if ((ea = hpfs_get_ea(i->i_sb, fnode, "SYMLINK", &ea_size))) {
   kfree(ea);
   i->i_mode = S_IFLNK | 0777;
   i->i_op = &page_symlink_inode_operations;
   inode_nohighmem(i);
   i->i_data.a_ops = &hpfs_symlink_aops;
   set_nlink(i, 1);
   i->i_size = ea_size;
   i->i_blocks = 1;
   brelse(bh);
   return;
  }
  if ((ea = hpfs_get_ea(i->i_sb, fnode, "MODE", &ea_size))) {
   int rdev = 0;
   umode_t mode = hpfs_sb(sb)->sb_mode;
   if (ea_size == 2) {
    mode = le16_to_cpu(*(__le16*)ea);
    hpfs_inode->i_ea_mode = 1;
   }
   kfree(ea);
   i->i_mode = mode;
   if (S_ISBLK(mode) || S_ISCHR(mode)) {
    if ((ea = hpfs_get_ea(i->i_sb, fnode, "DEV", &ea_size))) {
     if (ea_size == 4)
      rdev = le32_to_cpu(*(__le32*)ea);
     kfree(ea);
    }
   }
   if (S_ISBLK(mode) || S_ISCHR(mode) || S_ISFIFO(mode) || S_ISSOCK(mode)) {
    brelse(bh);
    set_nlink(i, 1);
    i->i_size = 0;
    i->i_blocks = 1;
    init_special_inode(i, mode,
     new_decode_dev(rdev));
    return;
   }
  }
 }
 if (fnode_is_dir(fnode)) {
  int n_dnodes, n_subdirs;
  i->i_mode |= S_IFDIR;
  i->i_op = &hpfs_dir_iops;
  i->i_fop = &hpfs_dir_ops;
  hpfs_inode->i_parent_dir = le32_to_cpu(fnode->up);
  hpfs_inode->i_dno = le32_to_cpu(fnode->u.external[0].disk_secno);
  if (hpfs_sb(sb)->sb_chk >= 2) {
   struct buffer_head *bh0;
   if (hpfs_map_fnode(sb, hpfs_inode->i_parent_dir, &bh0)) brelse(bh0);
  }
  n_dnodes = 0; n_subdirs = 0;
  hpfs_count_dnodes(i->i_sb, hpfs_inode->i_dno, &n_dnodes, &n_subdirs, ((void*)0));
  i->i_blocks = 4 * n_dnodes;
  i->i_size = 2048 * n_dnodes;
  set_nlink(i, 2 + n_subdirs);
 } else {
  i->i_mode |= S_IFREG;
  if (!hpfs_inode->i_ea_mode) i->i_mode &= ~0111;
  i->i_op = &hpfs_file_iops;
  i->i_fop = &hpfs_file_ops;
  set_nlink(i, 1);
  i->i_size = le32_to_cpu(fnode->file_size);
  i->i_blocks = ((i->i_size + 511) >> 9) + 1;
  i->i_data.a_ops = &hpfs_aops;
  hpfs_i(i)->mmu_private = i->i_size;
 }
 brelse(bh);
}
