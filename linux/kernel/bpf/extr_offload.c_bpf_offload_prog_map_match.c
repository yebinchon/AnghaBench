
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog {int dummy; } ;
struct bpf_offloaded_map {int netdev; } ;
struct bpf_map {int dummy; } ;


 int __bpf_offload_dev_match (struct bpf_prog*,int ) ;
 int bpf_devs_lock ;
 int bpf_map_is_dev_bound (struct bpf_map*) ;
 int bpf_map_offload_neutral (struct bpf_map*) ;
 int down_read (int *) ;
 struct bpf_offloaded_map* map_to_offmap (struct bpf_map*) ;
 int up_read (int *) ;

bool bpf_offload_prog_map_match(struct bpf_prog *prog, struct bpf_map *map)
{
 struct bpf_offloaded_map *offmap;
 bool ret;

 if (!bpf_map_is_dev_bound(map))
  return bpf_map_offload_neutral(map);
 offmap = map_to_offmap(map);

 down_read(&bpf_devs_lock);
 ret = __bpf_offload_dev_match(prog, offmap->netdev);
 up_read(&bpf_devs_lock);

 return ret;
}
