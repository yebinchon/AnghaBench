
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_stat {unsigned int migrate_type; } ;



__attribute__((used)) static int migrate_type_cmp(void *a, void *b)
{
 struct page_stat *l = a;
 struct page_stat *r = b;


 if (l->migrate_type == -1U)
  return 0;

 if (l->migrate_type < r->migrate_type)
  return -1;
 else if (l->migrate_type > r->migrate_type)
  return 1;
 return 0;
}
