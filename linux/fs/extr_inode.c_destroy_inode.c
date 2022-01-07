
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_operations {scalar_t__ free_inode; int (* destroy_inode ) (struct inode*) ;} ;
struct inode {int i_rcu; scalar_t__ free_inode; int i_lru; TYPE_1__* i_sb; } ;
struct TYPE_2__ {struct super_operations* s_op; } ;


 int BUG_ON (int) ;
 int __destroy_inode (struct inode*) ;
 int call_rcu (int *,int ) ;
 int i_callback ;
 int list_empty (int *) ;
 int stub1 (struct inode*) ;

__attribute__((used)) static void destroy_inode(struct inode *inode)
{
 const struct super_operations *ops = inode->i_sb->s_op;

 BUG_ON(!list_empty(&inode->i_lru));
 __destroy_inode(inode);
 if (ops->destroy_inode) {
  ops->destroy_inode(inode);
  if (!ops->free_inode)
   return;
 }
 inode->free_inode = ops->free_inode;
 call_rcu(&inode->i_rcu, i_callback);
}
