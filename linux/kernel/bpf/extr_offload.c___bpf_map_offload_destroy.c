
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_offloaded_map {int * netdev; int offloads; int map; } ;


 int BPF_OFFLOAD_MAP_FREE ;
 int WARN_ON (int ) ;
 int bpf_map_free_id (int *,int) ;
 int bpf_map_offload_ndo (struct bpf_offloaded_map*,int ) ;
 int list_del_init (int *) ;

__attribute__((used)) static void __bpf_map_offload_destroy(struct bpf_offloaded_map *offmap)
{
 WARN_ON(bpf_map_offload_ndo(offmap, BPF_OFFLOAD_MAP_FREE));

 bpf_map_free_id(&offmap->map, 1);
 list_del_init(&offmap->offloads);
 offmap->netdev = ((void*)0);
}
