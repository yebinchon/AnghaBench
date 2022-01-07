
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_blkbits; } ;
typedef int sector_t ;
typedef int loff_t ;



__attribute__((used)) static inline loff_t blk_to_logical(struct inode *inode, sector_t blk)
{
 return (blk << inode->i_blkbits);
}
