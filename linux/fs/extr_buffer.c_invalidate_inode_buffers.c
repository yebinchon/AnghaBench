
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int next; } ;
struct address_space {int private_lock; struct address_space* private_data; struct list_head private_list; } ;
struct inode {struct address_space i_data; } ;


 int BH_ENTRY (int ) ;
 int __remove_assoc_queue (int ) ;
 scalar_t__ inode_has_buffers (struct inode*) ;
 int list_empty (struct list_head*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void invalidate_inode_buffers(struct inode *inode)
{
 if (inode_has_buffers(inode)) {
  struct address_space *mapping = &inode->i_data;
  struct list_head *list = &mapping->private_list;
  struct address_space *buffer_mapping = mapping->private_data;

  spin_lock(&buffer_mapping->private_lock);
  while (!list_empty(list))
   __remove_assoc_queue(BH_ENTRY(list->next));
  spin_unlock(&buffer_mapping->private_lock);
 }
}
