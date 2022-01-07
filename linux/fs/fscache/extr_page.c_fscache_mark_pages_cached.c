
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagevec {unsigned long nr; int * pages; } ;
struct fscache_retrieval {int dummy; } ;


 int fscache_mark_page_cached (struct fscache_retrieval*,int ) ;
 int pagevec_reinit (struct pagevec*) ;

void fscache_mark_pages_cached(struct fscache_retrieval *op,
          struct pagevec *pagevec)
{
 unsigned long loop;

 for (loop = 0; loop < pagevec->nr; loop++)
  fscache_mark_page_cached(op, pagevec->pages[loop]);

 pagevec_reinit(pagevec);
}
