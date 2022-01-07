
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bpf_attr {int value_size; scalar_t__ max_entries; } ;
typedef int u64 ;
struct bpf_map {int memory; } ;
struct bpf_queue_stack {int size; struct bpf_map map; int lock; } ;
struct bpf_map_memory {int member_0; } ;


 int ENOMEM ;
 struct bpf_map* ERR_PTR (int) ;
 struct bpf_queue_stack* bpf_map_area_alloc (int,int) ;
 int bpf_map_attr_numa_node (union bpf_attr*) ;
 int bpf_map_charge_finish (struct bpf_map_memory*) ;
 int bpf_map_charge_init (struct bpf_map_memory*,int) ;
 int bpf_map_charge_move (int *,struct bpf_map_memory*) ;
 int bpf_map_init_from_attr (struct bpf_map*,union bpf_attr*) ;
 int memset (struct bpf_queue_stack*,int ,int) ;
 int raw_spin_lock_init (int *) ;

__attribute__((used)) static struct bpf_map *queue_stack_map_alloc(union bpf_attr *attr)
{
 int ret, numa_node = bpf_map_attr_numa_node(attr);
 struct bpf_map_memory mem = {0};
 struct bpf_queue_stack *qs;
 u64 size, queue_size, cost;

 size = (u64) attr->max_entries + 1;
 cost = queue_size = sizeof(*qs) + size * attr->value_size;

 ret = bpf_map_charge_init(&mem, cost);
 if (ret < 0)
  return ERR_PTR(ret);

 qs = bpf_map_area_alloc(queue_size, numa_node);
 if (!qs) {
  bpf_map_charge_finish(&mem);
  return ERR_PTR(-ENOMEM);
 }

 memset(qs, 0, sizeof(*qs));

 bpf_map_init_from_attr(&qs->map, attr);

 bpf_map_charge_move(&qs->map.memory, &mem);
 qs->size = size;

 raw_spin_lock_init(&qs->lock);

 return &qs->map;
}
