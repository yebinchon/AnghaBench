
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PSWPOUT ;
 int PageTransHuge (struct page*) ;
 int THP_SWPOUT ;
 int count_vm_event (int ) ;
 int count_vm_events (int ,int ) ;
 int hpage_nr_pages (struct page*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline void count_swpout_vm_event(struct page *page)
{




 count_vm_events(PSWPOUT, hpage_nr_pages(page));
}
