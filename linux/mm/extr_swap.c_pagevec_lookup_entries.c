
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagevec {int pages; int nr; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;


 int find_get_entries (struct address_space*,int ,unsigned int,int ,int *) ;
 int pagevec_count (struct pagevec*) ;

unsigned pagevec_lookup_entries(struct pagevec *pvec,
    struct address_space *mapping,
    pgoff_t start, unsigned nr_entries,
    pgoff_t *indices)
{
 pvec->nr = find_get_entries(mapping, start, nr_entries,
        pvec->pages, indices);
 return pagevec_count(pvec);
}
