
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_offloaded_map {scalar_t__ netdev; } ;
struct bpf_map {int dummy; } ;


 int __bpf_map_offload_destroy (struct bpf_offloaded_map*) ;
 int bpf_devs_lock ;
 int down_write (int *) ;
 int kfree (struct bpf_offloaded_map*) ;
 struct bpf_offloaded_map* map_to_offmap (struct bpf_map*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int up_write (int *) ;

void bpf_map_offload_map_free(struct bpf_map *map)
{
 struct bpf_offloaded_map *offmap = map_to_offmap(map);

 rtnl_lock();
 down_write(&bpf_devs_lock);
 if (offmap->netdev)
  __bpf_map_offload_destroy(offmap);
 up_write(&bpf_devs_lock);
 rtnl_unlock();

 kfree(offmap);
}
