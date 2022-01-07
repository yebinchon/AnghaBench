
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int INIT_LIST_HEAD (int ) ;
 int TRANSHUGE_PAGE_DTOR ;
 int page_deferred_list (struct page*) ;
 int set_compound_page_dtor (struct page*,int ) ;

void prep_transhuge_page(struct page *page)
{





 INIT_LIST_HEAD(page_deferred_list(page));
 set_compound_page_dtor(page, TRANSHUGE_PAGE_DTOR);
}
