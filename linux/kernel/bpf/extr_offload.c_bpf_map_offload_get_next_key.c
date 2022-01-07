
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bpf_offloaded_map {TYPE_1__* dev_ops; scalar_t__ netdev; } ;
struct bpf_map {int dummy; } ;
struct TYPE_2__ {int (* map_get_next_key ) (struct bpf_offloaded_map*,void*,void*) ;} ;


 int ENODEV ;
 int bpf_devs_lock ;
 int down_read (int *) ;
 struct bpf_offloaded_map* map_to_offmap (struct bpf_map*) ;
 int stub1 (struct bpf_offloaded_map*,void*,void*) ;
 int up_read (int *) ;

int bpf_map_offload_get_next_key(struct bpf_map *map, void *key, void *next_key)
{
 struct bpf_offloaded_map *offmap = map_to_offmap(map);
 int ret = -ENODEV;

 down_read(&bpf_devs_lock);
 if (offmap->netdev)
  ret = offmap->dev_ops->map_get_next_key(offmap, key, next_key);
 up_read(&bpf_devs_lock);

 return ret;
}
