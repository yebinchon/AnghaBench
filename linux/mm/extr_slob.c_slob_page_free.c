
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PageSlobFree (struct page*) ;

__attribute__((used)) static inline int slob_page_free(struct page *sp)
{
 return PageSlobFree(sp);
}
