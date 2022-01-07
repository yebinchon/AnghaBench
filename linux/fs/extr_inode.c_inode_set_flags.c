
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_flags; } ;


 int WARN_ON_ONCE (unsigned int) ;
 int set_mask_bits (int *,unsigned int,unsigned int) ;

void inode_set_flags(struct inode *inode, unsigned int flags,
       unsigned int mask)
{
 WARN_ON_ONCE(flags & ~mask);
 set_mask_bits(&inode->i_flags, mask, flags);
}
