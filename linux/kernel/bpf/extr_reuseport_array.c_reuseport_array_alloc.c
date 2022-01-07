
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bpf_attr {scalar_t__ max_entries; } ;
typedef int u64 ;
struct sock {int dummy; } ;
struct bpf_map {int memory; } ;
struct reuseport_array {struct bpf_map map; } ;
struct bpf_map_memory {int dummy; } ;


 int CAP_SYS_ADMIN ;
 int ENOMEM ;
 int EPERM ;
 struct bpf_map* ERR_PTR (int) ;
 struct reuseport_array* bpf_map_area_alloc (int,int) ;
 int bpf_map_attr_numa_node (union bpf_attr*) ;
 int bpf_map_charge_finish (struct bpf_map_memory*) ;
 int bpf_map_charge_init (struct bpf_map_memory*,int) ;
 int bpf_map_charge_move (int *,struct bpf_map_memory*) ;
 int bpf_map_init_from_attr (struct bpf_map*,union bpf_attr*) ;
 int capable (int ) ;

__attribute__((used)) static struct bpf_map *reuseport_array_alloc(union bpf_attr *attr)
{
 int err, numa_node = bpf_map_attr_numa_node(attr);
 struct reuseport_array *array;
 struct bpf_map_memory mem;
 u64 array_size;

 if (!capable(CAP_SYS_ADMIN))
  return ERR_PTR(-EPERM);

 array_size = sizeof(*array);
 array_size += (u64)attr->max_entries * sizeof(struct sock *);

 err = bpf_map_charge_init(&mem, array_size);
 if (err)
  return ERR_PTR(err);


 array = bpf_map_area_alloc(array_size, numa_node);
 if (!array) {
  bpf_map_charge_finish(&mem);
  return ERR_PTR(-ENOMEM);
 }


 bpf_map_init_from_attr(&array->map, attr);
 bpf_map_charge_move(&array->map.memory, &mem);

 return &array->map;
}
