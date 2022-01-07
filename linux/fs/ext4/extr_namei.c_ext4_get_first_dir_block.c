
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
struct ext4_dir_entry_2 {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
struct TYPE_2__ {int s_blocksize; } ;


 int DIRENT_HTREE ;
 scalar_t__ IS_ERR (struct buffer_head*) ;
 int PTR_ERR (struct buffer_head*) ;
 struct buffer_head* ext4_get_first_inline_block (struct inode*,struct ext4_dir_entry_2**,int*) ;
 int ext4_has_inline_data (struct inode*) ;
 struct ext4_dir_entry_2* ext4_next_entry (struct ext4_dir_entry_2*,int ) ;
 struct buffer_head* ext4_read_dirblock (struct inode*,int ,int ) ;

__attribute__((used)) static struct buffer_head *ext4_get_first_dir_block(handle_t *handle,
     struct inode *inode,
     int *retval,
     struct ext4_dir_entry_2 **parent_de,
     int *inlined)
{
 struct buffer_head *bh;

 if (!ext4_has_inline_data(inode)) {



  bh = ext4_read_dirblock(inode, 0, DIRENT_HTREE);
  if (IS_ERR(bh)) {
   *retval = PTR_ERR(bh);
   return ((void*)0);
  }
  *parent_de = ext4_next_entry(
     (struct ext4_dir_entry_2 *)bh->b_data,
     inode->i_sb->s_blocksize);
  return bh;
 }

 *inlined = 1;
 return ext4_get_first_inline_block(inode, parent_de, retval);
}
