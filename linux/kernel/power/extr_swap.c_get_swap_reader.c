
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct swap_map_page_list {struct swap_map_page* map; struct swap_map_page_list* next; } ;
struct swap_map_page {scalar_t__ next_swap; } ;
struct swap_map_handle {struct swap_map_page_list* maps; struct swap_map_page* cur; scalar_t__ k; } ;
typedef scalar_t__ sector_t ;
struct TYPE_2__ {unsigned int flags; scalar_t__ image; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GFP_NOIO ;
 int REQ_OP_READ ;
 int __GFP_HIGH ;
 scalar_t__ __get_free_page (int) ;
 int hib_submit_io (int ,int ,scalar_t__,struct swap_map_page*,int *) ;
 struct swap_map_page_list* kzalloc (int,int ) ;
 int release_swap_reader (struct swap_map_handle*) ;
 TYPE_1__* swsusp_header ;

__attribute__((used)) static int get_swap_reader(struct swap_map_handle *handle,
  unsigned int *flags_p)
{
 int error;
 struct swap_map_page_list *tmp, *last;
 sector_t offset;

 *flags_p = swsusp_header->flags;

 if (!swsusp_header->image)
  return -EINVAL;

 handle->cur = ((void*)0);
 last = handle->maps = ((void*)0);
 offset = swsusp_header->image;
 while (offset) {
  tmp = kzalloc(sizeof(*handle->maps), GFP_KERNEL);
  if (!tmp) {
   release_swap_reader(handle);
   return -ENOMEM;
  }
  if (!handle->maps)
   handle->maps = tmp;
  if (last)
   last->next = tmp;
  last = tmp;

  tmp->map = (struct swap_map_page *)
      __get_free_page(GFP_NOIO | __GFP_HIGH);
  if (!tmp->map) {
   release_swap_reader(handle);
   return -ENOMEM;
  }

  error = hib_submit_io(REQ_OP_READ, 0, offset, tmp->map, ((void*)0));
  if (error) {
   release_swap_reader(handle);
   return error;
  }
  offset = tmp->map->next_swap;
 }
 handle->k = 0;
 handle->cur = handle->maps->map;
 return 0;
}
