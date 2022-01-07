
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracing_map_ops {int dummy; } ;
struct tracing_map_entry {int dummy; } ;
struct tracing_map {unsigned int map_bits; int max_elts; int map_size; unsigned int key_size; int* key_idx; int map; void* private_data; struct tracing_map_ops const* ops; int next_elt; } ;


 int EINVAL ;
 int ENOMEM ;
 struct tracing_map* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 unsigned int TRACING_MAP_BITS_MAX ;
 unsigned int TRACING_MAP_BITS_MIN ;
 unsigned int TRACING_MAP_KEYS_MAX ;
 int atomic_set (int *,int) ;
 struct tracing_map* kzalloc (int,int ) ;
 int tracing_map_array_alloc (int,int) ;
 int tracing_map_destroy (struct tracing_map*) ;

struct tracing_map *tracing_map_create(unsigned int map_bits,
           unsigned int key_size,
           const struct tracing_map_ops *ops,
           void *private_data)
{
 struct tracing_map *map;
 unsigned int i;

 if (map_bits < TRACING_MAP_BITS_MIN ||
     map_bits > TRACING_MAP_BITS_MAX)
  return ERR_PTR(-EINVAL);

 map = kzalloc(sizeof(*map), GFP_KERNEL);
 if (!map)
  return ERR_PTR(-ENOMEM);

 map->map_bits = map_bits;
 map->max_elts = (1 << map_bits);
 atomic_set(&map->next_elt, -1);

 map->map_size = (1 << (map_bits + 1));
 map->ops = ops;

 map->private_data = private_data;

 map->map = tracing_map_array_alloc(map->map_size,
        sizeof(struct tracing_map_entry));
 if (!map->map)
  goto free;

 map->key_size = key_size;
 for (i = 0; i < TRACING_MAP_KEYS_MAX; i++)
  map->key_idx[i] = -1;
 out:
 return map;
 free:
 tracing_map_destroy(map);
 map = ERR_PTR(-ENOMEM);

 goto out;
}
