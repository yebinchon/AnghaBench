
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct msdos_sb_info {int dummy; } ;
struct msdos_dir_entry {int dummy; } ;
struct inode {int i_ino; } ;
struct fat_slot_info {int i_pos; int de; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int sector_t ;
struct TYPE_2__ {int i_pos; } ;


 int KERN_ERR ;
 TYPE_1__* MSDOS_I (struct inode*) ;
 int MSDOS_ROOT_INO ;
 struct msdos_sb_info* MSDOS_SB (struct super_block*) ;
 int brelse (struct buffer_head*) ;
 struct inode* fat_build_inode (struct super_block*,int ,int ) ;
 int fat_clus_to_blknr (struct msdos_sb_info*,int) ;
 struct inode* fat_dget (struct super_block*,int) ;
 int fat_fill_inode (struct inode*,struct msdos_dir_entry*) ;
 int fat_get_start (struct msdos_sb_info*,struct msdos_dir_entry*) ;
 int fat_msg (struct super_block*,int ,char*) ;
 int fat_scan_logstart (struct inode*,int,struct fat_slot_info*) ;
 int iput (struct inode*) ;
 int iunique (struct super_block*,int ) ;
 struct inode* new_inode (struct super_block*) ;
 struct buffer_head* sb_bread (struct super_block*,int ) ;

__attribute__((used)) static
struct inode *fat_rebuild_parent(struct super_block *sb, int parent_logstart)
{
 int search_clus, clus_to_match;
 struct msdos_dir_entry *de;
 struct inode *parent = ((void*)0);
 struct inode *dummy_grand_parent = ((void*)0);
 struct fat_slot_info sinfo;
 struct msdos_sb_info *sbi = MSDOS_SB(sb);
 sector_t blknr = fat_clus_to_blknr(sbi, parent_logstart);
 struct buffer_head *parent_bh = sb_bread(sb, blknr);
 if (!parent_bh) {
  fat_msg(sb, KERN_ERR,
   "unable to read cluster of parent directory");
  return ((void*)0);
 }

 de = (struct msdos_dir_entry *) parent_bh->b_data;
 clus_to_match = fat_get_start(sbi, &de[0]);
 search_clus = fat_get_start(sbi, &de[1]);

 dummy_grand_parent = fat_dget(sb, search_clus);
 if (!dummy_grand_parent) {
  dummy_grand_parent = new_inode(sb);
  if (!dummy_grand_parent) {
   brelse(parent_bh);
   return parent;
  }

  dummy_grand_parent->i_ino = iunique(sb, MSDOS_ROOT_INO);
  fat_fill_inode(dummy_grand_parent, &de[1]);
  MSDOS_I(dummy_grand_parent)->i_pos = -1;
 }

 if (!fat_scan_logstart(dummy_grand_parent, clus_to_match, &sinfo))
  parent = fat_build_inode(sb, sinfo.de, sinfo.i_pos);

 brelse(parent_bh);
 iput(dummy_grand_parent);

 return parent;
}
