
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ext4_extent {int ee_block; } ;
typedef int ext4_lblk_t ;
typedef int ext4_fsblk_t ;


 int EXTENT_STATUS_WRITTEN ;
 int ext4_es_insert_extent (struct inode*,int ,unsigned int,int ,int ) ;
 unsigned int ext4_ext_get_actual_len (struct ext4_extent*) ;
 int ext4_ext_pblock (struct ext4_extent*) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int ext4_zeroout_es(struct inode *inode, struct ext4_extent *ex)
{
 ext4_lblk_t ee_block;
 ext4_fsblk_t ee_pblock;
 unsigned int ee_len;

 ee_block = le32_to_cpu(ex->ee_block);
 ee_len = ext4_ext_get_actual_len(ex);
 ee_pblock = ext4_ext_pblock(ex);

 if (ee_len == 0)
  return 0;

 return ext4_es_insert_extent(inode, ee_block, ee_len, ee_pblock,
         EXTENT_STATUS_WRITTEN);
}
