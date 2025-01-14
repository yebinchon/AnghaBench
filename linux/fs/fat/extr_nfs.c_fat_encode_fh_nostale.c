
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msdos_sb_info {int dummy; } ;
struct inode {int i_generation; int i_sb; } ;
struct fat_fid {int i_pos_low; int i_pos_hi; int parent_i_pos_hi; int parent_i_pos_low; int parent_i_gen; int i_gen; } ;
typedef int loff_t ;
typedef int __u32 ;


 int FAT_FID_SIZE_WITHOUT_PARENT ;
 int FAT_FID_SIZE_WITH_PARENT ;
 int FILEID_FAT_WITHOUT_PARENT ;
 int FILEID_FAT_WITH_PARENT ;
 int FILEID_INVALID ;
 struct msdos_sb_info* MSDOS_SB (int ) ;
 int fat_i_pos_read (struct msdos_sb_info*,struct inode*) ;

__attribute__((used)) static int
fat_encode_fh_nostale(struct inode *inode, __u32 *fh, int *lenp,
        struct inode *parent)
{
 int len = *lenp;
 struct msdos_sb_info *sbi = MSDOS_SB(inode->i_sb);
 struct fat_fid *fid = (struct fat_fid *) fh;
 loff_t i_pos;
 int type = FILEID_FAT_WITHOUT_PARENT;

 if (parent) {
  if (len < FAT_FID_SIZE_WITH_PARENT) {
   *lenp = FAT_FID_SIZE_WITH_PARENT;
   return FILEID_INVALID;
  }
 } else {
  if (len < FAT_FID_SIZE_WITHOUT_PARENT) {
   *lenp = FAT_FID_SIZE_WITHOUT_PARENT;
   return FILEID_INVALID;
  }
 }

 i_pos = fat_i_pos_read(sbi, inode);
 *lenp = FAT_FID_SIZE_WITHOUT_PARENT;
 fid->i_gen = inode->i_generation;
 fid->i_pos_low = i_pos & 0xFFFFFFFF;
 fid->i_pos_hi = (i_pos >> 32) & 0xFFFF;
 if (parent) {
  i_pos = fat_i_pos_read(sbi, parent);
  fid->parent_i_pos_hi = (i_pos >> 32) & 0xFFFF;
  fid->parent_i_pos_low = i_pos & 0xFFFFFFFF;
  fid->parent_i_gen = parent->i_generation;
  type = FILEID_FAT_WITH_PARENT;
  *lenp = FAT_FID_SIZE_WITH_PARENT;
 }

 return type;
}
