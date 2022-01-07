
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracing_map_sort_entry {int elt; int key; } ;
struct tracing_map {int dummy; } ;
struct seq_file {int dummy; } ;
struct hist_trigger_data {int n_sort_keys; int sort_keys; struct tracing_map* map; } ;


 int hist_trigger_entry_print (struct seq_file*,struct hist_trigger_data*,int ,int ) ;
 int tracing_map_destroy_sort_entries (struct tracing_map_sort_entry**,int) ;
 int tracing_map_sort_entries (struct tracing_map*,int ,int ,struct tracing_map_sort_entry***) ;

__attribute__((used)) static int print_entries(struct seq_file *m,
    struct hist_trigger_data *hist_data)
{
 struct tracing_map_sort_entry **sort_entries = ((void*)0);
 struct tracing_map *map = hist_data->map;
 int i, n_entries;

 n_entries = tracing_map_sort_entries(map, hist_data->sort_keys,
          hist_data->n_sort_keys,
          &sort_entries);
 if (n_entries < 0)
  return n_entries;

 for (i = 0; i < n_entries; i++)
  hist_trigger_entry_print(m, hist_data,
      sort_entries[i]->key,
      sort_entries[i]->elt);

 tracing_map_destroy_sort_entries(sort_entries, n_entries);

 return n_entries;
}
