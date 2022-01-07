
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagevec {int pages; int nr; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;


 int PAGEVEC_SIZE ;
 int find_get_pages_range (struct address_space*,int *,int ,int ,int ) ;
 int pagevec_count (struct pagevec*) ;

unsigned pagevec_lookup_range(struct pagevec *pvec,
  struct address_space *mapping, pgoff_t *start, pgoff_t end)
{
 pvec->nr = find_get_pages_range(mapping, start, end, PAGEVEC_SIZE,
     pvec->pages);
 return pagevec_count(pvec);
}
