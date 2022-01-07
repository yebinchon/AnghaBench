
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct swap_map_page_list {TYPE_1__* map; struct swap_map_page_list* next; } ;
struct swap_map_handle {size_t k; struct swap_map_page_list* maps; TYPE_1__* cur; } ;
struct hib_bio_batch {int dummy; } ;
typedef int sector_t ;
struct TYPE_2__ {int * entries; } ;


 int EFAULT ;
 int EINVAL ;
 size_t MAP_PAGE_ENTRIES ;
 int REQ_OP_READ ;
 int free_page (unsigned long) ;
 int hib_submit_io (int ,int ,int ,void*,struct hib_bio_batch*) ;
 int kfree (struct swap_map_page_list*) ;
 int release_swap_reader (struct swap_map_handle*) ;

__attribute__((used)) static int swap_read_page(struct swap_map_handle *handle, void *buf,
  struct hib_bio_batch *hb)
{
 sector_t offset;
 int error;
 struct swap_map_page_list *tmp;

 if (!handle->cur)
  return -EINVAL;
 offset = handle->cur->entries[handle->k];
 if (!offset)
  return -EFAULT;
 error = hib_submit_io(REQ_OP_READ, 0, offset, buf, hb);
 if (error)
  return error;
 if (++handle->k >= MAP_PAGE_ENTRIES) {
  handle->k = 0;
  free_page((unsigned long)handle->maps->map);
  tmp = handle->maps;
  handle->maps = handle->maps->next;
  kfree(tmp);
  if (!handle->maps)
   release_swap_reader(handle);
  else
   handle->cur = handle->maps->map;
 }
 return error;
}
