
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int next; } ;
struct address_space {int private_lock; struct address_space* private_data; struct list_head private_list; } ;
struct inode {struct address_space i_data; } ;
struct buffer_head {int dummy; } ;


 struct buffer_head* BH_ENTRY (int ) ;
 int __remove_assoc_queue (struct buffer_head*) ;
 scalar_t__ buffer_dirty (struct buffer_head*) ;
 scalar_t__ inode_has_buffers (struct inode*) ;
 int list_empty (struct list_head*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int remove_inode_buffers(struct inode *inode)
{
 int ret = 1;

 if (inode_has_buffers(inode)) {
  struct address_space *mapping = &inode->i_data;
  struct list_head *list = &mapping->private_list;
  struct address_space *buffer_mapping = mapping->private_data;

  spin_lock(&buffer_mapping->private_lock);
  while (!list_empty(list)) {
   struct buffer_head *bh = BH_ENTRY(list->next);
   if (buffer_dirty(bh)) {
    ret = 0;
    break;
   }
   __remove_assoc_queue(bh);
  }
  spin_unlock(&buffer_mapping->private_lock);
 }
 return ret;
}
