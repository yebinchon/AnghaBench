
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_func_proto {int dummy; } ;
typedef enum bpf_func_id { ____Placeholder_bpf_func_id } bpf_func_id ;
 int CAP_SYS_ADMIN ;
 struct bpf_func_proto const bpf_get_numa_node_id_proto ;
 struct bpf_func_proto const bpf_get_prandom_u32_proto ;
 struct bpf_func_proto const bpf_get_raw_smp_processor_id_proto ;
 struct bpf_func_proto const* bpf_get_trace_printk_proto () ;
 struct bpf_func_proto const bpf_ktime_get_ns_proto ;
 struct bpf_func_proto const bpf_map_delete_elem_proto ;
 struct bpf_func_proto const bpf_map_lookup_elem_proto ;
 struct bpf_func_proto const bpf_map_peek_elem_proto ;
 struct bpf_func_proto const bpf_map_pop_elem_proto ;
 struct bpf_func_proto const bpf_map_push_elem_proto ;
 struct bpf_func_proto const bpf_map_update_elem_proto ;
 struct bpf_func_proto const bpf_spin_lock_proto ;
 struct bpf_func_proto const bpf_spin_unlock_proto ;
 struct bpf_func_proto const bpf_tail_call_proto ;
 int capable (int ) ;

__attribute__((used)) static const struct bpf_func_proto *
bpf_base_func_proto(enum bpf_func_id func_id)
{
 switch (func_id) {
 case 136:
  return &bpf_map_lookup_elem_proto;
 case 132:
  return &bpf_map_update_elem_proto;
 case 137:
  return &bpf_map_delete_elem_proto;
 case 133:
  return &bpf_map_push_elem_proto;
 case 134:
  return &bpf_map_pop_elem_proto;
 case 135:
  return &bpf_map_peek_elem_proto;
 case 140:
  return &bpf_get_prandom_u32_proto;
 case 139:
  return &bpf_get_raw_smp_processor_id_proto;
 case 141:
  return &bpf_get_numa_node_id_proto;
 case 129:
  return &bpf_tail_call_proto;
 case 138:
  return &bpf_ktime_get_ns_proto;
 default:
  break;
 }

 if (!capable(CAP_SYS_ADMIN))
  return ((void*)0);

 switch (func_id) {
 case 131:
  return &bpf_spin_lock_proto;
 case 130:
  return &bpf_spin_unlock_proto;
 case 128:
  return bpf_get_trace_printk_proto();
 default:
  return ((void*)0);
 }
}
