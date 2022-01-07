
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iomap_ops {int dummy; } ;
struct inode {int i_blkbits; } ;
struct address_space {struct inode* host; } ;
typedef int sector_t ;
typedef int loff_t ;


 scalar_t__ filemap_write_and_wait (struct address_space*) ;
 unsigned int i_blocksize (struct inode*) ;
 int iomap_apply (struct inode*,int,unsigned int,int ,struct iomap_ops const*,int*,int ) ;
 int iomap_bmap_actor ;

sector_t
iomap_bmap(struct address_space *mapping, sector_t bno,
  const struct iomap_ops *ops)
{
 struct inode *inode = mapping->host;
 loff_t pos = bno << inode->i_blkbits;
 unsigned blocksize = i_blocksize(inode);

 if (filemap_write_and_wait(mapping))
  return 0;

 bno = 0;
 iomap_apply(inode, pos, blocksize, 0, ops, &bno, iomap_bmap_actor);
 return bno;
}
