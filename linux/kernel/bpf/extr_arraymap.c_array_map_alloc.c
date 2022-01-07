
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bpf_attr {scalar_t__ map_type; int max_entries; int value_size; } ;
typedef unsigned long long u64 ;
typedef int u32 ;
struct bpf_map_memory {int dummy; } ;
struct bpf_map {int unpriv_array; struct bpf_map_memory memory; } ;
struct bpf_array {int index_mask; int elem_size; struct bpf_map map; } ;


 scalar_t__ BPF_MAP_TYPE_PERCPU_ARRAY ;
 int CAP_SYS_ADMIN ;
 int E2BIG ;
 int ENOMEM ;
 struct bpf_map* ERR_PTR (int) ;
 scalar_t__ bpf_array_alloc_percpu (struct bpf_array*) ;
 struct bpf_array* bpf_map_area_alloc (unsigned long long,int) ;
 int bpf_map_area_free (struct bpf_array*) ;
 int bpf_map_attr_numa_node (union bpf_attr*) ;
 int bpf_map_charge_finish (struct bpf_map_memory*) ;
 int bpf_map_charge_init (struct bpf_map_memory*,unsigned long long) ;
 int bpf_map_charge_move (struct bpf_map_memory*,struct bpf_map_memory*) ;
 int bpf_map_init_from_attr (struct bpf_map*,union bpf_attr*) ;
 int capable (int ) ;
 unsigned long long fls_long (int) ;
 unsigned long long num_possible_cpus () ;
 int round_up (int ,int) ;

__attribute__((used)) static struct bpf_map *array_map_alloc(union bpf_attr *attr)
{
 bool percpu = attr->map_type == BPF_MAP_TYPE_PERCPU_ARRAY;
 int ret, numa_node = bpf_map_attr_numa_node(attr);
 u32 elem_size, index_mask, max_entries;
 bool unpriv = !capable(CAP_SYS_ADMIN);
 u64 cost, array_size, mask64;
 struct bpf_map_memory mem;
 struct bpf_array *array;

 elem_size = round_up(attr->value_size, 8);

 max_entries = attr->max_entries;





 mask64 = fls_long(max_entries - 1);
 mask64 = 1ULL << mask64;
 mask64 -= 1;

 index_mask = mask64;
 if (unpriv) {



  max_entries = index_mask + 1;

  if (max_entries < attr->max_entries)
   return ERR_PTR(-E2BIG);
 }

 array_size = sizeof(*array);
 if (percpu)
  array_size += (u64) max_entries * sizeof(void *);
 else
  array_size += (u64) max_entries * elem_size;


 cost = array_size;
 if (percpu)
  cost += (u64)attr->max_entries * elem_size * num_possible_cpus();

 ret = bpf_map_charge_init(&mem, cost);
 if (ret < 0)
  return ERR_PTR(ret);


 array = bpf_map_area_alloc(array_size, numa_node);
 if (!array) {
  bpf_map_charge_finish(&mem);
  return ERR_PTR(-ENOMEM);
 }
 array->index_mask = index_mask;
 array->map.unpriv_array = unpriv;


 bpf_map_init_from_attr(&array->map, attr);
 bpf_map_charge_move(&array->map.memory, &mem);
 array->elem_size = elem_size;

 if (percpu && bpf_array_alloc_percpu(array)) {
  bpf_map_charge_finish(&array->map.memory);
  bpf_map_area_free(array);
  return ERR_PTR(-ENOMEM);
 }

 return &array->map;
}
