
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct buffer_head {int * b_assoc_map; int b_assoc_buffers; TYPE_1__* b_page; } ;
struct address_space {int private_lock; } ;
struct TYPE_2__ {struct address_space* mapping; } ;


 int __brelse (struct buffer_head*) ;
 int clear_buffer_dirty (struct buffer_head*) ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void __bforget(struct buffer_head *bh)
{
 clear_buffer_dirty(bh);
 if (bh->b_assoc_map) {
  struct address_space *buffer_mapping = bh->b_page->mapping;

  spin_lock(&buffer_mapping->private_lock);
  list_del_init(&bh->b_assoc_buffers);
  bh->b_assoc_map = ((void*)0);
  spin_unlock(&buffer_mapping->private_lock);
 }
 __brelse(bh);
}
