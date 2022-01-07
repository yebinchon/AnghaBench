
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ext4_extent {int ee_block; } ;
typedef int ext4_fsblk_t ;


 unsigned int ext4_ext_get_actual_len (struct ext4_extent*) ;
 int ext4_ext_pblock (struct ext4_extent*) ;
 int ext4_issue_zeroout (struct inode*,int ,int ,unsigned int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int ext4_ext_zeroout(struct inode *inode, struct ext4_extent *ex)
{
 ext4_fsblk_t ee_pblock;
 unsigned int ee_len;

 ee_len = ext4_ext_get_actual_len(ex);
 ee_pblock = ext4_ext_pblock(ex);
 return ext4_issue_zeroout(inode, le32_to_cpu(ex->ee_block), ee_pblock,
      ee_len);
}
