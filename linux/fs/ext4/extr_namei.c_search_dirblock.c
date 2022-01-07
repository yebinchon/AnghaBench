
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
struct ext4_filename {int dummy; } ;
struct ext4_dir_entry_2 {int dummy; } ;
struct buffer_head {int b_data; } ;
struct TYPE_2__ {int s_blocksize; } ;


 int ext4_search_dir (struct buffer_head*,int ,int ,struct inode*,struct ext4_filename*,unsigned int,struct ext4_dir_entry_2**) ;

__attribute__((used)) static inline int search_dirblock(struct buffer_head *bh,
      struct inode *dir,
      struct ext4_filename *fname,
      unsigned int offset,
      struct ext4_dir_entry_2 **res_dir)
{
 return ext4_search_dir(bh, bh->b_data, dir->i_sb->s_blocksize, dir,
          fname, offset, res_dir);
}
