
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracing_map_sort_entry {int elt; scalar_t__ elt_copied; } ;


 int kfree (struct tracing_map_sort_entry*) ;
 int tracing_map_elt_free (int ) ;

__attribute__((used)) static void destroy_sort_entry(struct tracing_map_sort_entry *entry)
{
 if (!entry)
  return;

 if (entry->elt_copied)
  tracing_map_elt_free(entry->elt);

 kfree(entry);
}
