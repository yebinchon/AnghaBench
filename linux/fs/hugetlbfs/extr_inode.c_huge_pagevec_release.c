
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagevec {int * pages; } ;


 int pagevec_count (struct pagevec*) ;
 int pagevec_reinit (struct pagevec*) ;
 int put_page (int ) ;

__attribute__((used)) static void huge_pagevec_release(struct pagevec *pvec)
{
 int i;

 for (i = 0; i < pagevec_count(pvec); ++i)
  put_page(pvec->pages[i]);

 pagevec_reinit(pvec);
}
