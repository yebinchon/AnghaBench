
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_map_page_list {struct swap_map_page_list* next; scalar_t__ map; } ;
struct swap_map_handle {int * cur; struct swap_map_page_list* maps; } ;


 int free_page (unsigned long) ;
 int kfree (struct swap_map_page_list*) ;

__attribute__((used)) static void release_swap_reader(struct swap_map_handle *handle)
{
 struct swap_map_page_list *tmp;

 while (handle->maps) {
  if (handle->maps->map)
   free_page((unsigned long)handle->maps->map);
  tmp = handle->maps;
  handle->maps = handle->maps->next;
  kfree(tmp);
 }
 handle->cur = ((void*)0);
}
