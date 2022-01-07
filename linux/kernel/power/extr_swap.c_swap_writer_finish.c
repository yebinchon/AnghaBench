
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_map_handle {int dummy; } ;


 int FMODE_WRITE ;
 int flush_swap_writer (struct swap_map_handle*) ;
 int free_all_swap_pages (int ) ;
 int mark_swapfiles (struct swap_map_handle*,unsigned int) ;
 int pr_cont (char*) ;
 int pr_info (char*) ;
 int release_swap_writer (struct swap_map_handle*) ;
 int root_swap ;
 int swsusp_close (int ) ;

__attribute__((used)) static int swap_writer_finish(struct swap_map_handle *handle,
  unsigned int flags, int error)
{
 if (!error) {
  flush_swap_writer(handle);
  pr_info("S");
  error = mark_swapfiles(handle, flags);
  pr_cont("|\n");
 }

 if (error)
  free_all_swap_pages(root_swap);
 release_swap_writer(handle);
 swsusp_close(FMODE_WRITE);

 return error;
}
