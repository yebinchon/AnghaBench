
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracing_map_sort_entry {int dummy; } ;


 int destroy_sort_entry (struct tracing_map_sort_entry*) ;
 int vfree (struct tracing_map_sort_entry**) ;

void tracing_map_destroy_sort_entries(struct tracing_map_sort_entry **entries,
          unsigned int n_entries)
{
 unsigned int i;

 for (i = 0; i < n_entries; i++)
  destroy_sort_entry(entries[i]);

 vfree(entries);
}
