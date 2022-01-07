
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_lock; TYPE_2__* i_sb; } ;
typedef int qsize_t ;
struct TYPE_4__ {TYPE_1__* dq_op; } ;
struct TYPE_3__ {int get_reserved_space; } ;


 int __inode_get_rsv_space (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static qsize_t inode_get_rsv_space(struct inode *inode)
{
 qsize_t ret;

 if (!inode->i_sb->dq_op->get_reserved_space)
  return 0;
 spin_lock(&inode->i_lock);
 ret = __inode_get_rsv_space(inode);
 spin_unlock(&inode->i_lock);
 return ret;
}
