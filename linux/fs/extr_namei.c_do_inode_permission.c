
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_opflags; int i_lock; TYPE_1__* i_op; } ;
struct TYPE_2__ {int (* permission ) (struct inode*,int) ;} ;


 int IOP_FASTPERM ;
 int generic_permission (struct inode*,int) ;
 scalar_t__ likely (int (*) (struct inode*,int)) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct inode*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int do_inode_permission(struct inode *inode, int mask)
{
 if (unlikely(!(inode->i_opflags & IOP_FASTPERM))) {
  if (likely(inode->i_op->permission))
   return inode->i_op->permission(inode, mask);


  spin_lock(&inode->i_lock);
  inode->i_opflags |= IOP_FASTPERM;
  spin_unlock(&inode->i_lock);
 }
 return generic_permission(inode, mask);
}
