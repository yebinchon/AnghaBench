
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htab_elem {int dummy; } ;
struct bpf_map {int key_size; } ;


 struct htab_elem* __htab_map_lookup_elem (struct bpf_map*,void*) ;
 int htab_elem_get_ptr (struct htab_elem*,int ) ;
 void* this_cpu_ptr (int ) ;

__attribute__((used)) static void *htab_percpu_map_lookup_elem(struct bpf_map *map, void *key)
{
 struct htab_elem *l = __htab_map_lookup_elem(map, key);

 if (l)
  return this_cpu_ptr(htab_elem_get_ptr(l, map->key_size));
 else
  return ((void*)0);
}
