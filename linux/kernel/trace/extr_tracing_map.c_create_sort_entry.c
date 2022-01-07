
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracing_map_sort_entry {struct tracing_map_elt* elt; void* key; } ;
struct tracing_map_elt {int dummy; } ;


 int GFP_KERNEL ;
 struct tracing_map_sort_entry* kzalloc (int,int ) ;

__attribute__((used)) static struct tracing_map_sort_entry *
create_sort_entry(void *key, struct tracing_map_elt *elt)
{
 struct tracing_map_sort_entry *sort_entry;

 sort_entry = kzalloc(sizeof(*sort_entry), GFP_KERNEL);
 if (!sort_entry)
  return ((void*)0);

 sort_entry->key = key;
 sort_entry->elt = elt;

 return sort_entry;
}
