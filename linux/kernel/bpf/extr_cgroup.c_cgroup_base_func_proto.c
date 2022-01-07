
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog {int dummy; } ;
struct bpf_func_proto {int dummy; } ;
typedef enum bpf_func_id { ____Placeholder_bpf_func_id } bpf_func_id ;
 int CAP_SYS_ADMIN ;
 struct bpf_func_proto const bpf_get_current_cgroup_id_proto ;
 struct bpf_func_proto const bpf_get_current_uid_gid_proto ;
 struct bpf_func_proto const bpf_get_local_storage_proto ;
 struct bpf_func_proto const* bpf_get_trace_printk_proto () ;
 struct bpf_func_proto const bpf_map_delete_elem_proto ;
 struct bpf_func_proto const bpf_map_lookup_elem_proto ;
 struct bpf_func_proto const bpf_map_peek_elem_proto ;
 struct bpf_func_proto const bpf_map_pop_elem_proto ;
 struct bpf_func_proto const bpf_map_push_elem_proto ;
 struct bpf_func_proto const bpf_map_update_elem_proto ;
 int capable (int ) ;

__attribute__((used)) static const struct bpf_func_proto *
cgroup_base_func_proto(enum bpf_func_id func_id, const struct bpf_prog *prog)
{
 switch (func_id) {
 case 133:
  return &bpf_map_lookup_elem_proto;
 case 129:
  return &bpf_map_update_elem_proto;
 case 134:
  return &bpf_map_delete_elem_proto;
 case 130:
  return &bpf_map_push_elem_proto;
 case 131:
  return &bpf_map_pop_elem_proto;
 case 132:
  return &bpf_map_peek_elem_proto;
 case 136:
  return &bpf_get_current_uid_gid_proto;
 case 135:
  return &bpf_get_local_storage_proto;
 case 137:
  return &bpf_get_current_cgroup_id_proto;
 case 128:
  if (capable(CAP_SYS_ADMIN))
   return bpf_get_trace_printk_proto();

 default:
  return ((void*)0);
 }
}
