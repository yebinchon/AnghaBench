
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bpf_prog_info {int nr_map_ids; int map_ids; } ;
typedef int info ;
typedef int __u32 ;


 int bpf_obj_get_info_by_fd (int,struct bpf_prog_info*,int*) ;
 scalar_t__ json_output ;
 int json_wtr ;
 int jsonw_end_array (int ) ;
 int jsonw_name (int ,char*) ;
 int jsonw_start_array (int ) ;
 int jsonw_uint (int ,int) ;
 int printf (char*,...) ;
 int ptr_to_u64 (int*) ;

__attribute__((used)) static void show_prog_maps(int fd, u32 num_maps)
{
 struct bpf_prog_info info = {};
 __u32 len = sizeof(info);
 __u32 map_ids[num_maps];
 unsigned int i;
 int err;

 info.nr_map_ids = num_maps;
 info.map_ids = ptr_to_u64(map_ids);

 err = bpf_obj_get_info_by_fd(fd, &info, &len);
 if (err || !info.nr_map_ids)
  return;

 if (json_output) {
  jsonw_name(json_wtr, "map_ids");
  jsonw_start_array(json_wtr);
  for (i = 0; i < info.nr_map_ids; i++)
   jsonw_uint(json_wtr, map_ids[i]);
  jsonw_end_array(json_wtr);
 } else {
  printf("  map_ids ");
  for (i = 0; i < info.nr_map_ids; i++)
   printf("%u%s", map_ids[i],
          i == info.nr_map_ids - 1 ? "" : ",");
 }
}
