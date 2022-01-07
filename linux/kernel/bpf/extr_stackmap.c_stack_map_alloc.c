
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bpf_attr {int value_size; int map_flags; scalar_t__ max_entries; int key_size; } ;
typedef int u64 ;
typedef int u32 ;
struct stack_map_bucket {int dummy; } ;
struct bpf_map {int value_size; int memory; } ;
struct bpf_stack_map {int n_buckets; struct bpf_map map; } ;
struct bpf_stack_build_id {int dummy; } ;
struct bpf_map_memory {int dummy; } ;


 int BPF_F_STACK_BUILD_ID ;
 int BUILD_BUG_ON (int) ;
 int CAP_SYS_ADMIN ;
 int EINVAL ;
 int ENOMEM ;
 int EPERM ;
 struct bpf_map* ERR_PTR (int) ;
 int STACK_CREATE_FLAG_MASK ;
 struct bpf_stack_map* bpf_map_area_alloc (int,int ) ;
 int bpf_map_area_free (struct bpf_stack_map*) ;
 int bpf_map_attr_numa_node (union bpf_attr*) ;
 int bpf_map_charge_finish (struct bpf_map_memory*) ;
 int bpf_map_charge_init (struct bpf_map_memory*,int) ;
 int bpf_map_charge_move (int *,struct bpf_map_memory*) ;
 int bpf_map_init_from_attr (struct bpf_map*,union bpf_attr*) ;
 int capable (int ) ;
 int get_callchain_buffers (int) ;
 int prealloc_elems_and_freelist (struct bpf_stack_map*) ;
 int put_callchain_buffers () ;
 int roundup_pow_of_two (scalar_t__) ;
 int sysctl_perf_event_max_stack ;

__attribute__((used)) static struct bpf_map *stack_map_alloc(union bpf_attr *attr)
{
 u32 value_size = attr->value_size;
 struct bpf_stack_map *smap;
 struct bpf_map_memory mem;
 u64 cost, n_buckets;
 int err;

 if (!capable(CAP_SYS_ADMIN))
  return ERR_PTR(-EPERM);

 if (attr->map_flags & ~STACK_CREATE_FLAG_MASK)
  return ERR_PTR(-EINVAL);


 if (attr->max_entries == 0 || attr->key_size != 4 ||
     value_size < 8 || value_size % 8)
  return ERR_PTR(-EINVAL);

 BUILD_BUG_ON(sizeof(struct bpf_stack_build_id) % sizeof(u64));
 if (attr->map_flags & BPF_F_STACK_BUILD_ID) {
  if (value_size % sizeof(struct bpf_stack_build_id) ||
      value_size / sizeof(struct bpf_stack_build_id)
      > sysctl_perf_event_max_stack)
   return ERR_PTR(-EINVAL);
 } else if (value_size / 8 > sysctl_perf_event_max_stack)
  return ERR_PTR(-EINVAL);


 n_buckets = roundup_pow_of_two(attr->max_entries);

 cost = n_buckets * sizeof(struct stack_map_bucket *) + sizeof(*smap);
 cost += n_buckets * (value_size + sizeof(struct stack_map_bucket));
 err = bpf_map_charge_init(&mem, cost);
 if (err)
  return ERR_PTR(err);

 smap = bpf_map_area_alloc(cost, bpf_map_attr_numa_node(attr));
 if (!smap) {
  bpf_map_charge_finish(&mem);
  return ERR_PTR(-ENOMEM);
 }

 bpf_map_init_from_attr(&smap->map, attr);
 smap->map.value_size = value_size;
 smap->n_buckets = n_buckets;

 err = get_callchain_buffers(sysctl_perf_event_max_stack);
 if (err)
  goto free_charge;

 err = prealloc_elems_and_freelist(smap);
 if (err)
  goto put_buffers;

 bpf_map_charge_move(&smap->map.memory, &mem);

 return &smap->map;

put_buffers:
 put_callchain_buffers();
free_charge:
 bpf_map_charge_finish(&mem);
 bpf_map_area_free(smap);
 return ERR_PTR(err);
}
