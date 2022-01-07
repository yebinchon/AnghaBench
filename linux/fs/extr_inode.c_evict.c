
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_operations {int (* evict_inode ) (struct inode*) ;} ;
struct inode {int i_state; int i_lock; scalar_t__ i_cdev; int i_mode; scalar_t__ i_bdev; int i_data; int i_io_list; int i_lru; TYPE_1__* i_sb; } ;
struct TYPE_2__ {struct super_operations* s_op; } ;


 int BUG_ON (int) ;
 int I_CLEAR ;
 int I_FREEING ;
 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 int __I_NEW ;
 int bd_forget (struct inode*) ;
 int cd_forget (struct inode*) ;
 int clear_inode (struct inode*) ;
 int destroy_inode (struct inode*) ;
 int inode_io_list_del (struct inode*) ;
 int inode_sb_list_del (struct inode*) ;
 int inode_wait_for_writeback (struct inode*) ;
 int list_empty (int *) ;
 int remove_inode_hash (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct inode*) ;
 int truncate_inode_pages_final (int *) ;
 int wake_up_bit (int*,int ) ;

__attribute__((used)) static void evict(struct inode *inode)
{
 const struct super_operations *op = inode->i_sb->s_op;

 BUG_ON(!(inode->i_state & I_FREEING));
 BUG_ON(!list_empty(&inode->i_lru));

 if (!list_empty(&inode->i_io_list))
  inode_io_list_del(inode);

 inode_sb_list_del(inode);







 inode_wait_for_writeback(inode);

 if (op->evict_inode) {
  op->evict_inode(inode);
 } else {
  truncate_inode_pages_final(&inode->i_data);
  clear_inode(inode);
 }
 if (S_ISBLK(inode->i_mode) && inode->i_bdev)
  bd_forget(inode);
 if (S_ISCHR(inode->i_mode) && inode->i_cdev)
  cd_forget(inode);

 remove_inode_hash(inode);

 spin_lock(&inode->i_lock);
 wake_up_bit(&inode->i_state, __I_NEW);
 BUG_ON(inode->i_state != (I_FREEING | I_CLEAR));
 spin_unlock(&inode->i_lock);

 destroy_inode(inode);
}
