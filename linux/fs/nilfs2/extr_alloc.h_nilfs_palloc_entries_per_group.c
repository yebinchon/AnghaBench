
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_blkbits; } ;



__attribute__((used)) static inline unsigned long
nilfs_palloc_entries_per_group(const struct inode *inode)
{
 return 1UL << (inode->i_blkbits + 3 );
}
