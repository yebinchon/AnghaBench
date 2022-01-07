
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct inode {int i_io_list; } ;
struct bdi_writeback {struct list_head b_dirty_time; int list_lock; } ;


 int assert_spin_locked (int *) ;
 int list_move (int *,struct list_head*) ;
 int wb_io_lists_depopulated (struct bdi_writeback*) ;
 int wb_io_lists_populated (struct bdi_writeback*) ;

__attribute__((used)) static bool inode_io_list_move_locked(struct inode *inode,
          struct bdi_writeback *wb,
          struct list_head *head)
{
 assert_spin_locked(&wb->list_lock);

 list_move(&inode->i_io_list, head);


 if (head != &wb->b_dirty_time)
  return wb_io_lists_populated(wb);

 wb_io_lists_depopulated(wb);
 return 0;
}
