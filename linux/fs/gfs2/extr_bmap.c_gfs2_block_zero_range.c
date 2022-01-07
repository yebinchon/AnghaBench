
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int loff_t ;


 int gfs2_iomap_ops ;
 int iomap_zero_range (struct inode*,int ,unsigned int,int *,int *) ;

__attribute__((used)) static int gfs2_block_zero_range(struct inode *inode, loff_t from,
     unsigned int length)
{
 return iomap_zero_range(inode, from, length, ((void*)0), &gfs2_iomap_ops);
}
