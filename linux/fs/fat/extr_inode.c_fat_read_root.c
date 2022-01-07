
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int fs_gid; int fs_uid; } ;
struct msdos_sb_info {int dir_entries; int cluster_size; scalar_t__ root_cluster; int dir_ops; TYPE_1__ options; } ;
struct msdos_dir_entry {int dummy; } ;
struct TYPE_9__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_8__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_7__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct inode {int i_size; int i_blocks; TYPE_4__ i_ctime; TYPE_3__ i_atime; TYPE_2__ i_mtime; int * i_fop; int i_op; int i_mode; scalar_t__ i_generation; int i_gid; int i_uid; int i_sb; } ;
typedef int loff_t ;
struct TYPE_10__ {int mmu_private; scalar_t__ i_logstart; scalar_t__ i_start; int i_pos; } ;


 int ATTR_DIR ;
 TYPE_5__* MSDOS_I (struct inode*) ;
 int MSDOS_ROOT_INO ;
 struct msdos_sb_info* MSDOS_SB (int ) ;
 int S_IRWXUGO ;
 int fat_calc_dir_size (struct inode*) ;
 int fat_dir_operations ;
 int fat_make_mode (struct msdos_sb_info*,int ,int ) ;
 int fat_save_attrs (struct inode*,int ) ;
 scalar_t__ fat_subdirs (struct inode*) ;
 int inode_inc_iversion (struct inode*) ;
 scalar_t__ is_fat32 (struct msdos_sb_info*) ;
 int set_nlink (struct inode*,scalar_t__) ;

__attribute__((used)) static int fat_read_root(struct inode *inode)
{
 struct msdos_sb_info *sbi = MSDOS_SB(inode->i_sb);
 int error;

 MSDOS_I(inode)->i_pos = MSDOS_ROOT_INO;
 inode->i_uid = sbi->options.fs_uid;
 inode->i_gid = sbi->options.fs_gid;
 inode_inc_iversion(inode);
 inode->i_generation = 0;
 inode->i_mode = fat_make_mode(sbi, ATTR_DIR, S_IRWXUGO);
 inode->i_op = sbi->dir_ops;
 inode->i_fop = &fat_dir_operations;
 if (is_fat32(sbi)) {
  MSDOS_I(inode)->i_start = sbi->root_cluster;
  error = fat_calc_dir_size(inode);
  if (error < 0)
   return error;
 } else {
  MSDOS_I(inode)->i_start = 0;
  inode->i_size = sbi->dir_entries * sizeof(struct msdos_dir_entry);
 }
 inode->i_blocks = ((inode->i_size + (sbi->cluster_size - 1))
      & ~((loff_t)sbi->cluster_size - 1)) >> 9;
 MSDOS_I(inode)->i_logstart = 0;
 MSDOS_I(inode)->mmu_private = inode->i_size;

 fat_save_attrs(inode, ATTR_DIR);
 inode->i_mtime.tv_sec = inode->i_atime.tv_sec = inode->i_ctime.tv_sec = 0;
 inode->i_mtime.tv_nsec = inode->i_atime.tv_nsec = inode->i_ctime.tv_nsec = 0;
 set_nlink(inode, fat_subdirs(inode)+2);

 return 0;
}
