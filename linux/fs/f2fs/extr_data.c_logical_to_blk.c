
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_blkbits; } ;
typedef int sector_t ;
typedef int loff_t ;



__attribute__((used)) static inline sector_t logical_to_blk(struct inode *inode, loff_t offset)
{
 return (offset >> inode->i_blkbits);
}
