
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int slab_list; } ;


 int __ClearPageSlobFree (struct page*) ;
 int list_del (int *) ;

__attribute__((used)) static inline void clear_slob_page_free(struct page *sp)
{
 list_del(&sp->slab_list);
 __ClearPageSlobFree(sp);
}
