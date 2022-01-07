
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracing_map_sort_entry {void* key; } ;


 int WARN_ONCE (int,char*,unsigned int) ;
 scalar_t__ cmp_entries_dup ;
 int memcmp (void*,void*,unsigned int) ;
 int sort (struct tracing_map_sort_entry**,int,int,int (*) (void const*,void const*),int *) ;

__attribute__((used)) static void detect_dups(struct tracing_map_sort_entry **sort_entries,
        int n_entries, unsigned int key_size)
{
 unsigned int dups = 0, total_dups = 0;
 int i;
 void *key;

 if (n_entries < 2)
  return;

 sort(sort_entries, n_entries, sizeof(struct tracing_map_sort_entry *),
      (int (*)(const void *, const void *))cmp_entries_dup, ((void*)0));

 key = sort_entries[0]->key;
 for (i = 1; i < n_entries; i++) {
  if (!memcmp(sort_entries[i]->key, key, key_size)) {
   dups++; total_dups++;
   continue;
  }
  key = sort_entries[i]->key;
  dups = 0;
 }

 WARN_ONCE(total_dups > 0,
    "Duplicates detected: %d\n", total_dups);
}
