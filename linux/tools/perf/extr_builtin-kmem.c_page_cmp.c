
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_stat {scalar_t__ page; } ;



__attribute__((used)) static int page_cmp(void *a, void *b)
{
 struct page_stat *l = a;
 struct page_stat *r = b;

 if (l->page < r->page)
  return -1;
 else if (l->page > r->page)
  return 1;
 return 0;
}
