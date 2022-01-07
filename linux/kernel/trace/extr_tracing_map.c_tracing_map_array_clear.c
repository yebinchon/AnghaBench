
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracing_map_array {unsigned int n_pages; int * pages; } ;


 int PAGE_SIZE ;
 int memset (int ,int ,int ) ;

void tracing_map_array_clear(struct tracing_map_array *a)
{
 unsigned int i;

 if (!a->pages)
  return;

 for (i = 0; i < a->n_pages; i++)
  memset(a->pages[i], 0, PAGE_SIZE);
}
