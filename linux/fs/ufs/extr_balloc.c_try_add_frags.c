
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct inode {scalar_t__ i_blocks; int i_lock; } ;


 int __inode_add_bytes (struct inode*,unsigned int) ;
 int __inode_sub_bytes (struct inode*,unsigned int) ;
 unsigned int i_blocksize (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool try_add_frags(struct inode *inode, unsigned frags)
{
 unsigned size = frags * i_blocksize(inode);
 spin_lock(&inode->i_lock);
 __inode_add_bytes(inode, size);
 if (unlikely((u32)inode->i_blocks != inode->i_blocks)) {
  __inode_sub_bytes(inode, size);
  spin_unlock(&inode->i_lock);
  return 0;
 }
 spin_unlock(&inode->i_lock);
 return 1;
}
