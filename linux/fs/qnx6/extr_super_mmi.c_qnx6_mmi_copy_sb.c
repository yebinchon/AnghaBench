
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qnx6_super_block {int Longfile; int Bitmap; int Inode; int sb_free_blocks; int sb_num_blocks; int sb_free_inodes; int sb_num_inodes; int sb_blocksize; int sb_serial; int sb_checksum; int sb_magic; } ;
struct qnx6_mmi_super_block {int Longfile; int Bitmap; int Inode; int sb_free_blocks; int sb_num_blocks; int sb_free_inodes; int sb_num_inodes; int sb_blocksize; int sb_serial; int sb_checksum; int sb_magic; } ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static void qnx6_mmi_copy_sb(struct qnx6_super_block *qsb,
  struct qnx6_mmi_super_block *sb)
{
 qsb->sb_magic = sb->sb_magic;
 qsb->sb_checksum = sb->sb_checksum;
 qsb->sb_serial = sb->sb_serial;
 qsb->sb_blocksize = sb->sb_blocksize;
 qsb->sb_num_inodes = sb->sb_num_inodes;
 qsb->sb_free_inodes = sb->sb_free_inodes;
 qsb->sb_num_blocks = sb->sb_num_blocks;
 qsb->sb_free_blocks = sb->sb_free_blocks;


 memcpy(&qsb->Inode, &sb->Inode, sizeof(sb->Inode));
 memcpy(&qsb->Bitmap, &sb->Bitmap, sizeof(sb->Bitmap));
 memcpy(&qsb->Longfile, &sb->Longfile, sizeof(sb->Longfile));
}
