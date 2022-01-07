
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snapshot_handle {scalar_t__ cur; } ;


 int last_highmem_page_copied () ;
 scalar_t__ nr_copy_pages ;
 scalar_t__ nr_meta_pages ;

int snapshot_image_loaded(struct snapshot_handle *handle)
{
 return !(!nr_copy_pages || !last_highmem_page_copied() ||
   handle->cur <= nr_meta_pages + nr_copy_pages);
}
