
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linked_page {struct linked_page* next; } ;


 int free_image_page (struct linked_page*,int) ;

__attribute__((used)) static inline void free_list_of_pages(struct linked_page *list,
          int clear_page_nosave)
{
 while (list) {
  struct linked_page *lp = list->next;

  free_image_page(list, clear_page_nosave);
  list = lp;
 }
}
