
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int I_DIRTY ;
 int __nilfs_mark_inode_dirty (struct inode*,int ) ;

__attribute__((used)) static inline int nilfs_mark_inode_dirty(struct inode *inode)
{
 return __nilfs_mark_inode_dirty(inode, I_DIRTY);
}
