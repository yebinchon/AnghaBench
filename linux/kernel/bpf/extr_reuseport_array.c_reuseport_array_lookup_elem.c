
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {size_t max_entries; } ;
struct reuseport_array {int * ptrs; TYPE_1__ map; } ;
struct bpf_map {int dummy; } ;


 void* rcu_dereference (int ) ;
 struct reuseport_array* reuseport_array (struct bpf_map*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void *reuseport_array_lookup_elem(struct bpf_map *map, void *key)
{
 struct reuseport_array *array = reuseport_array(map);
 u32 index = *(u32 *)key;

 if (unlikely(index >= array->map.max_entries))
  return ((void*)0);

 return rcu_dereference(array->ptrs[index]);
}
