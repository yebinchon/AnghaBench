
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bpf_map_info {int id; } ;
typedef int info ;


 int assert (int) ;
 int bpf_map_lookup_elem (int,int*,int*) ;
 int bpf_obj_get_info_by_fd (int,struct bpf_map_info*,int*) ;

__attribute__((used)) static void check_map_id(int inner_map_fd, int map_in_map_fd, uint32_t key)
{
 struct bpf_map_info info = {};
 uint32_t info_len = sizeof(info);
 int ret, id;

 ret = bpf_obj_get_info_by_fd(inner_map_fd, &info, &info_len);
 assert(!ret);

 ret = bpf_map_lookup_elem(map_in_map_fd, &key, &id);
 assert(!ret);
 assert(id == info.id);
}
