
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iomap_ops {int dummy; } ;
struct inode {int dummy; } ;
typedef unsigned int loff_t ;


 unsigned int i_blocksize (struct inode*) ;
 int iomap_zero_range (struct inode*,unsigned int,unsigned int,int*,struct iomap_ops const*) ;

int
iomap_truncate_page(struct inode *inode, loff_t pos, bool *did_zero,
  const struct iomap_ops *ops)
{
 unsigned int blocksize = i_blocksize(inode);
 unsigned int off = pos & (blocksize - 1);


 if (!off)
  return 0;
 return iomap_zero_range(inode, pos, blocksize - off, did_zero, ops);
}
