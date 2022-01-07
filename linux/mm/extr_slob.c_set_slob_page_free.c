
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int slab_list; } ;
struct list_head {int dummy; } ;


 int __SetPageSlobFree (struct page*) ;
 int list_add (int *,struct list_head*) ;

__attribute__((used)) static void set_slob_page_free(struct page *sp, struct list_head *list)
{
 list_add(&sp->slab_list, list);
 __SetPageSlobFree(sp);
}
