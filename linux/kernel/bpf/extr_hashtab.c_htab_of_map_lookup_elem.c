
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map {int dummy; } ;


 void* READ_ONCE (struct bpf_map*) ;
 struct bpf_map** htab_map_lookup_elem (struct bpf_map*,void*) ;

__attribute__((used)) static void *htab_of_map_lookup_elem(struct bpf_map *map, void *key)
{
 struct bpf_map **inner_map = htab_map_lookup_elem(map, key);

 if (!inner_map)
  return ((void*)0);

 return READ_ONCE(*inner_map);
}
