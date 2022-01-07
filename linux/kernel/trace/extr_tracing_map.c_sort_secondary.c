
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracing_map_sort_key {int field_idx; } ;
struct tracing_map_sort_entry {int dummy; } ;
struct tracing_map {int dummy; } ;


 int cmp_entries_key (struct tracing_map_sort_entry const**,struct tracing_map_sort_entry const**) ;
 int cmp_entries_sum (struct tracing_map_sort_entry const**,struct tracing_map_sort_entry const**) ;
 scalar_t__ is_key (struct tracing_map*,int ) ;
 int set_sort_key (struct tracing_map*,struct tracing_map_sort_key*) ;
 int sort (struct tracing_map_sort_entry const**,unsigned int,int,int (*) (void const*,void const*),int *) ;

__attribute__((used)) static void sort_secondary(struct tracing_map *map,
      const struct tracing_map_sort_entry **entries,
      unsigned int n_entries,
      struct tracing_map_sort_key *primary_key,
      struct tracing_map_sort_key *secondary_key)
{
 int (*primary_fn)(const struct tracing_map_sort_entry **,
     const struct tracing_map_sort_entry **);
 int (*secondary_fn)(const struct tracing_map_sort_entry **,
       const struct tracing_map_sort_entry **);
 unsigned i, start = 0, n_sub = 1;

 if (is_key(map, primary_key->field_idx))
  primary_fn = cmp_entries_key;
 else
  primary_fn = cmp_entries_sum;

 if (is_key(map, secondary_key->field_idx))
  secondary_fn = cmp_entries_key;
 else
  secondary_fn = cmp_entries_sum;

 for (i = 0; i < n_entries - 1; i++) {
  const struct tracing_map_sort_entry **a = &entries[i];
  const struct tracing_map_sort_entry **b = &entries[i + 1];

  if (primary_fn(a, b) == 0) {
   n_sub++;
   if (i < n_entries - 2)
    continue;
  }

  if (n_sub < 2) {
   start = i + 1;
   n_sub = 1;
   continue;
  }

  set_sort_key(map, secondary_key);
  sort(&entries[start], n_sub,
       sizeof(struct tracing_map_sort_entry *),
       (int (*)(const void *, const void *))secondary_fn, ((void*)0));
  set_sort_key(map, primary_key);

  start = i + 1;
  n_sub = 1;
 }
}
