
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct msdos_dir_entry {int name; } ;
struct inode {scalar_t__ i_generation; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef scalar_t__ sector_t ;
typedef int loff_t ;
typedef int llu ;
struct TYPE_4__ {scalar_t__ nfs; } ;
struct TYPE_5__ {TYPE_1__ options; } ;


 scalar_t__ FAT_NFS_NOSTALE_RO ;
 scalar_t__ IS_FREE (int ) ;
 int KERN_ERR ;
 TYPE_2__* MSDOS_SB (struct super_block*) ;
 int brelse (struct buffer_head*) ;
 struct inode* fat_build_inode (struct super_block*,struct msdos_dir_entry*,int ) ;
 int fat_get_blknr_offset (TYPE_2__*,int ,scalar_t__*,int*) ;
 struct inode* fat_ilookup (struct super_block*,int ,int ) ;
 int fat_msg (struct super_block*,int ,char*,int ) ;
 int iput (struct inode*) ;
 struct buffer_head* sb_bread (struct super_block*,scalar_t__) ;

__attribute__((used)) static struct inode *__fat_nfs_get_inode(struct super_block *sb,
           u64 ino, u32 generation, loff_t i_pos)
{
 struct inode *inode = fat_ilookup(sb, ino, i_pos);

 if (inode && generation && (inode->i_generation != generation)) {
  iput(inode);
  inode = ((void*)0);
 }
 if (inode == ((void*)0) && MSDOS_SB(sb)->options.nfs == FAT_NFS_NOSTALE_RO) {
  struct buffer_head *bh = ((void*)0);
  struct msdos_dir_entry *de ;
  sector_t blocknr;
  int offset;
  fat_get_blknr_offset(MSDOS_SB(sb), i_pos, &blocknr, &offset);
  bh = sb_bread(sb, blocknr);
  if (!bh) {
   fat_msg(sb, KERN_ERR,
    "unable to read block(%llu) for building NFS inode",
    (llu)blocknr);
   return inode;
  }
  de = (struct msdos_dir_entry *)bh->b_data;



  if (IS_FREE(de[offset].name))
   inode = ((void*)0);
  else
   inode = fat_build_inode(sb, &de[offset], i_pos);
  brelse(bh);
 }

 return inode;
}
