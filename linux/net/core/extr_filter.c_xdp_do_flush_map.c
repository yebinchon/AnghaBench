
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_redirect_info {struct bpf_map* map_to_flush; } ;
struct bpf_map {int map_type; } ;






 int __cpu_map_flush (struct bpf_map*) ;
 int __dev_map_flush (struct bpf_map*) ;
 int __xsk_map_flush (struct bpf_map*) ;
 int bpf_redirect_info ;
 struct bpf_redirect_info* this_cpu_ptr (int *) ;

void xdp_do_flush_map(void)
{
 struct bpf_redirect_info *ri = this_cpu_ptr(&bpf_redirect_info);
 struct bpf_map *map = ri->map_to_flush;

 ri->map_to_flush = ((void*)0);
 if (map) {
  switch (map->map_type) {
  case 130:
  case 129:
   __dev_map_flush(map);
   break;
  case 131:
   __cpu_map_flush(map);
   break;
  case 128:
   __xsk_map_flush(map);
   break;
  default:
   break;
  }
 }
}
