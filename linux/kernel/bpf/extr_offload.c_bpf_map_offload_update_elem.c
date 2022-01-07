
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct bpf_offloaded_map {TYPE_1__* dev_ops; scalar_t__ netdev; } ;
struct bpf_map {int dummy; } ;
struct TYPE_2__ {int (* map_update_elem ) (struct bpf_offloaded_map*,void*,void*,int ) ;} ;


 int BPF_EXIST ;
 int EINVAL ;
 int ENODEV ;
 int bpf_devs_lock ;
 int down_read (int *) ;
 struct bpf_offloaded_map* map_to_offmap (struct bpf_map*) ;
 int stub1 (struct bpf_offloaded_map*,void*,void*,int ) ;
 scalar_t__ unlikely (int) ;
 int up_read (int *) ;

int bpf_map_offload_update_elem(struct bpf_map *map,
    void *key, void *value, u64 flags)
{
 struct bpf_offloaded_map *offmap = map_to_offmap(map);
 int ret = -ENODEV;

 if (unlikely(flags > BPF_EXIST))
  return -EINVAL;

 down_read(&bpf_devs_lock);
 if (offmap->netdev)
  ret = offmap->dev_ops->map_update_elem(offmap, key, value,
             flags);
 up_read(&bpf_devs_lock);

 return ret;
}
