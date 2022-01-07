
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
typedef size_t loff_t ;
struct TYPE_2__ {int s_blocksize; } ;



__attribute__((used)) static int ocfs2_is_io_unaligned(struct inode *inode, size_t count, loff_t pos)
{
 int blockmask = inode->i_sb->s_blocksize - 1;
 loff_t final_size = pos + count;

 if ((pos & blockmask) || (final_size & blockmask))
  return 1;
 return 0;
}
