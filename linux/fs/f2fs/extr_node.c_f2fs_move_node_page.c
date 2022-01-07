
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int nr_to_write; int for_reclaim; int sync_mode; } ;
struct page {int dummy; } ;


 int EAGAIN ;
 int FG_GC ;
 int FS_GC_NODE_IO ;
 int NODE ;
 int PageWriteback (struct page*) ;
 int WB_SYNC_ALL ;
 scalar_t__ __write_node_page (struct page*,int,int *,struct writeback_control*,int,int ,int *) ;
 int clear_page_dirty_for_io (struct page*) ;
 int f2fs_put_page (struct page*,int ) ;
 int f2fs_wait_on_page_writeback (struct page*,int ,int,int) ;
 int set_page_dirty (struct page*) ;
 int unlock_page (struct page*) ;

int f2fs_move_node_page(struct page *node_page, int gc_type)
{
 int err = 0;

 if (gc_type == FG_GC) {
  struct writeback_control wbc = {
   .sync_mode = WB_SYNC_ALL,
   .nr_to_write = 1,
   .for_reclaim = 0,
  };

  f2fs_wait_on_page_writeback(node_page, NODE, 1, 1);

  set_page_dirty(node_page);

  if (!clear_page_dirty_for_io(node_page)) {
   err = -EAGAIN;
   goto out_page;
  }

  if (__write_node_page(node_page, 0, ((void*)0),
     &wbc, 0, FS_GC_NODE_IO, ((void*)0))) {
   err = -EAGAIN;
   unlock_page(node_page);
  }
  goto release_page;
 } else {

  if (!PageWriteback(node_page))
   set_page_dirty(node_page);
 }
out_page:
 unlock_page(node_page);
release_page:
 f2fs_put_page(node_page, 0);
 return err;
}
