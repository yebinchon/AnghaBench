
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_lock; int i_blocks; } ;
typedef int loff_t ;
typedef int i_size ;
typedef int i_blocks ;
typedef int blkcnt_t ;


 int i_size_read (struct inode*) ;
 int i_size_write (struct inode*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void fsstack_copy_inode_size(struct inode *dst, struct inode *src)
{
 loff_t i_size;
 blkcnt_t i_blocks;







 i_size = i_size_read(src);
 if (sizeof(i_blocks) > sizeof(long))
  spin_lock(&src->i_lock);
 i_blocks = src->i_blocks;
 if (sizeof(i_blocks) > sizeof(long))
  spin_unlock(&src->i_lock);
 if (sizeof(i_size) > sizeof(long) || sizeof(i_blocks) > sizeof(long))
  spin_lock(&dst->i_lock);
 i_size_write(dst, i_size);
 dst->i_blocks = i_blocks;
 if (sizeof(i_size) > sizeof(long) || sizeof(i_blocks) > sizeof(long))
  spin_unlock(&dst->i_lock);
}
