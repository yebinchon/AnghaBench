
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_io_list; } ;
struct bdi_writeback {int list_lock; } ;


 int assert_spin_locked (int *) ;
 int list_del_init (int *) ;
 int wb_io_lists_depopulated (struct bdi_writeback*) ;

__attribute__((used)) static void inode_io_list_del_locked(struct inode *inode,
         struct bdi_writeback *wb)
{
 assert_spin_locked(&wb->list_lock);

 list_del_init(&inode->i_io_list);
 wb_io_lists_depopulated(wb);
}
