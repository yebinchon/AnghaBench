
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nrpages; int nrexceptional; int private_list; int i_pages; } ;
struct inode {int i_state; int i_wb_list; TYPE_1__ i_data; } ;


 int BUG_ON (int) ;
 int I_CLEAR ;
 int I_FREEING ;
 int list_empty (int *) ;
 int xa_lock_irq (int *) ;
 int xa_unlock_irq (int *) ;

void clear_inode(struct inode *inode)
{





 xa_lock_irq(&inode->i_data.i_pages);
 BUG_ON(inode->i_data.nrpages);
 BUG_ON(inode->i_data.nrexceptional);
 xa_unlock_irq(&inode->i_data.i_pages);
 BUG_ON(!list_empty(&inode->i_data.private_list));
 BUG_ON(!(inode->i_state & I_FREEING));
 BUG_ON(inode->i_state & I_CLEAR);
 BUG_ON(!list_empty(&inode->i_wb_list));

 inode->i_state = I_FREEING | I_CLEAR;
}
