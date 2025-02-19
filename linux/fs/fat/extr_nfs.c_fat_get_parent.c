
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_2__ {scalar_t__ nfs; } ;
struct msdos_sb_info {TYPE_1__ options; } ;
struct msdos_dir_entry {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {struct super_block* d_sb; } ;
struct buffer_head {int dummy; } ;


 scalar_t__ FAT_NFS_NOSTALE_RO ;
 struct msdos_sb_info* MSDOS_SB (struct super_block*) ;
 int brelse (struct buffer_head*) ;
 int d_inode (struct dentry*) ;
 struct dentry* d_obtain_alias (struct inode*) ;
 struct inode* fat_dget (struct super_block*,int) ;
 int fat_get_dotdot_entry (int ,struct buffer_head**,struct msdos_dir_entry**) ;
 int fat_get_start (struct msdos_sb_info*,struct msdos_dir_entry*) ;
 struct inode* fat_rebuild_parent (struct super_block*,int) ;

__attribute__((used)) static struct dentry *fat_get_parent(struct dentry *child_dir)
{
 struct super_block *sb = child_dir->d_sb;
 struct buffer_head *bh = ((void*)0);
 struct msdos_dir_entry *de;
 struct inode *parent_inode = ((void*)0);
 struct msdos_sb_info *sbi = MSDOS_SB(sb);

 if (!fat_get_dotdot_entry(d_inode(child_dir), &bh, &de)) {
  int parent_logstart = fat_get_start(sbi, de);
  parent_inode = fat_dget(sb, parent_logstart);
  if (!parent_inode && sbi->options.nfs == FAT_NFS_NOSTALE_RO)
   parent_inode = fat_rebuild_parent(sb, parent_logstart);
 }
 brelse(bh);

 return d_obtain_alias(parent_inode);
}
