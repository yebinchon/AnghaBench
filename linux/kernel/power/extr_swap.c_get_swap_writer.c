
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_map_page {int dummy; } ;
struct swap_map_handle {scalar_t__ cur_swap; scalar_t__ first_sector; int reqd_free_pages; scalar_t__ k; struct swap_map_page* cur; } ;


 int ENOMEM ;
 int ENOSPC ;
 int FMODE_WRITE ;
 int GFP_KERNEL ;
 scalar_t__ alloc_swapdev_block (int ) ;
 scalar_t__ get_zeroed_page (int ) ;
 int pr_err (char*) ;
 int release_swap_writer (struct swap_map_handle*) ;
 int reqd_free_pages () ;
 int root_swap ;
 int swsusp_close (int ) ;
 int swsusp_swap_check () ;

__attribute__((used)) static int get_swap_writer(struct swap_map_handle *handle)
{
 int ret;

 ret = swsusp_swap_check();
 if (ret) {
  if (ret != -ENOSPC)
   pr_err("Cannot find swap device, try swapon -a\n");
  return ret;
 }
 handle->cur = (struct swap_map_page *)get_zeroed_page(GFP_KERNEL);
 if (!handle->cur) {
  ret = -ENOMEM;
  goto err_close;
 }
 handle->cur_swap = alloc_swapdev_block(root_swap);
 if (!handle->cur_swap) {
  ret = -ENOSPC;
  goto err_rel;
 }
 handle->k = 0;
 handle->reqd_free_pages = reqd_free_pages();
 handle->first_sector = handle->cur_swap;
 return 0;
err_rel:
 release_swap_writer(handle);
err_close:
 swsusp_close(FMODE_WRITE);
 return ret;
}
