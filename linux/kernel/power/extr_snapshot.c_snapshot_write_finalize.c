
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snapshot_handle {int cur; int buffer; } ;


 int copy_last_highmem_page () ;
 int free_highmem_data () ;
 int hibernate_restore_protect_page (int ) ;
 int memory_bm_recycle (int *) ;
 int nr_copy_pages ;
 int nr_meta_pages ;
 int orig_bm ;
 int page_key_free () ;
 int page_key_write (int ) ;

void snapshot_write_finalize(struct snapshot_handle *handle)
{
 copy_last_highmem_page();

 page_key_write(handle->buffer);
 page_key_free();
 hibernate_restore_protect_page(handle->buffer);

 if (handle->cur > 1 && handle->cur > nr_meta_pages + nr_copy_pages) {
  memory_bm_recycle(&orig_bm);
  free_highmem_data();
 }
}
