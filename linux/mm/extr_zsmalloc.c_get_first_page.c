
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zspage {struct page* first_page; } ;
struct page {int dummy; } ;


 int VM_BUG_ON_PAGE (int,struct page*) ;
 int is_first_page (struct page*) ;

__attribute__((used)) static inline struct page *get_first_page(struct zspage *zspage)
{
 struct page *first_page = zspage->first_page;

 VM_BUG_ON_PAGE(!is_first_page(first_page), first_page);
 return first_page;
}
