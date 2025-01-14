
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union bpf_attr {scalar_t__ btf_value_type_id; scalar_t__ btf_key_type_id; int btf_fd; int map_name; int map_flags; } ;
struct btf {int spin_lock_off; TYPE_1__* ops; int memory; struct btf* btf; scalar_t__ btf_value_type_id; scalar_t__ btf_key_type_id; int usercnt; int refcnt; int name; } ;
struct bpf_map_memory {int dummy; } ;
struct bpf_map {int spin_lock_off; TYPE_1__* ops; int memory; struct bpf_map* btf; scalar_t__ btf_value_type_id; scalar_t__ btf_key_type_id; int usercnt; int refcnt; int name; } ;
struct TYPE_2__ {int (* map_free ) (struct btf*) ;} ;


 int BPF_MAP_CREATE ;
 int CHECK_ATTR (int ) ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct btf*) ;
 int NUMA_NO_NODE ;
 int PTR_ERR (struct btf*) ;
 int atomic_set (int *,int) ;
 int bpf_get_file_flag (int ) ;
 int bpf_map_alloc_id (struct btf*) ;
 int bpf_map_attr_numa_node (union bpf_attr*) ;
 int bpf_map_charge_finish (struct bpf_map_memory*) ;
 int bpf_map_charge_move (struct bpf_map_memory*,int *) ;
 int bpf_map_new_fd (struct btf*,int) ;
 int bpf_map_put_with_uref (struct btf*) ;
 int bpf_obj_name_cpy (int ,int ) ;
 struct btf* btf_get_by_fd (int ) ;
 int btf_put (struct btf*) ;
 struct btf* find_and_alloc_map (union bpf_attr*) ;
 int map_check_btf (struct btf*,struct btf*,scalar_t__,scalar_t__) ;
 int node_online (int) ;
 unsigned int nr_node_ids ;
 int security_bpf_map_alloc (struct btf*) ;
 int security_bpf_map_free (struct btf*) ;
 int stub1 (struct btf*) ;

__attribute__((used)) static int map_create(union bpf_attr *attr)
{
 int numa_node = bpf_map_attr_numa_node(attr);
 struct bpf_map_memory mem;
 struct bpf_map *map;
 int f_flags;
 int err;

 err = CHECK_ATTR(BPF_MAP_CREATE);
 if (err)
  return -EINVAL;

 f_flags = bpf_get_file_flag(attr->map_flags);
 if (f_flags < 0)
  return f_flags;

 if (numa_node != NUMA_NO_NODE &&
     ((unsigned int)numa_node >= nr_node_ids ||
      !node_online(numa_node)))
  return -EINVAL;


 map = find_and_alloc_map(attr);
 if (IS_ERR(map))
  return PTR_ERR(map);

 err = bpf_obj_name_cpy(map->name, attr->map_name);
 if (err)
  goto free_map;

 atomic_set(&map->refcnt, 1);
 atomic_set(&map->usercnt, 1);

 if (attr->btf_key_type_id || attr->btf_value_type_id) {
  struct btf *btf;

  if (!attr->btf_value_type_id) {
   err = -EINVAL;
   goto free_map;
  }

  btf = btf_get_by_fd(attr->btf_fd);
  if (IS_ERR(btf)) {
   err = PTR_ERR(btf);
   goto free_map;
  }

  err = map_check_btf(map, btf, attr->btf_key_type_id,
        attr->btf_value_type_id);
  if (err) {
   btf_put(btf);
   goto free_map;
  }

  map->btf = btf;
  map->btf_key_type_id = attr->btf_key_type_id;
  map->btf_value_type_id = attr->btf_value_type_id;
 } else {
  map->spin_lock_off = -EINVAL;
 }

 err = security_bpf_map_alloc(map);
 if (err)
  goto free_map;

 err = bpf_map_alloc_id(map);
 if (err)
  goto free_map_sec;

 err = bpf_map_new_fd(map, f_flags);
 if (err < 0) {






  bpf_map_put_with_uref(map);
  return err;
 }

 return err;

free_map_sec:
 security_bpf_map_free(map);
free_map:
 btf_put(map->btf);
 bpf_map_charge_move(&mem, &map->memory);
 map->ops->map_free(map);
 bpf_map_charge_finish(&mem);
 return err;
}
