
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {scalar_t__ s_blocksize; } ;
struct inode {struct super_block* i_sb; } ;
struct ext4_dir_entry {scalar_t__ inode; int rec_len; } ;
typedef scalar_t__ ext4_lblk_t ;


 scalar_t__ ext4_rec_len_from_disk (int ,scalar_t__) ;
 int is_dx (struct inode*) ;

__attribute__((used)) static int is_dx_internal_node(struct inode *dir, ext4_lblk_t block,
          struct ext4_dir_entry *de)
{
 struct super_block *sb = dir->i_sb;

 if (!is_dx(dir))
  return 0;
 if (block == 0)
  return 1;
 if (de->inode == 0 &&
     ext4_rec_len_from_disk(de->rec_len, sb->s_blocksize) ==
   sb->s_blocksize)
  return 1;
 return 0;
}
