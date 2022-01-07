
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagevec {int percpu_pvec_drained; int pages; } ;


 int lru_add_drain () ;
 int pagevec_count (struct pagevec*) ;
 int pagevec_reinit (struct pagevec*) ;
 int release_pages (int ,int ) ;

void __pagevec_release(struct pagevec *pvec)
{
 if (!pvec->percpu_pvec_drained) {
  lru_add_drain();
  pvec->percpu_pvec_drained = 1;
 }
 release_pages(pvec->pages, pagevec_count(pvec));
 pagevec_reinit(pvec);
}
