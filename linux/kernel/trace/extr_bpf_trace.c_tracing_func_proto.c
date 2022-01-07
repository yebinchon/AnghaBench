
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog {int dummy; } ;
struct bpf_func_proto {int dummy; } ;
typedef enum bpf_func_id { ____Placeholder_bpf_func_id } bpf_func_id ;
 struct bpf_func_proto const bpf_current_task_under_cgroup_proto ;
 struct bpf_func_proto const bpf_get_current_cgroup_id_proto ;
 struct bpf_func_proto const bpf_get_current_comm_proto ;
 struct bpf_func_proto const bpf_get_current_pid_tgid_proto ;
 struct bpf_func_proto const bpf_get_current_task_proto ;
 struct bpf_func_proto const bpf_get_current_uid_gid_proto ;
 struct bpf_func_proto const bpf_get_numa_node_id_proto ;
 struct bpf_func_proto const bpf_get_prandom_u32_proto ;
 struct bpf_func_proto const* bpf_get_probe_write_proto () ;
 struct bpf_func_proto const bpf_get_smp_processor_id_proto ;
 struct bpf_func_proto const* bpf_get_trace_printk_proto () ;
 struct bpf_func_proto const bpf_ktime_get_ns_proto ;
 struct bpf_func_proto const bpf_map_delete_elem_proto ;
 struct bpf_func_proto const bpf_map_lookup_elem_proto ;
 struct bpf_func_proto const bpf_map_peek_elem_proto ;
 struct bpf_func_proto const bpf_map_pop_elem_proto ;
 struct bpf_func_proto const bpf_map_push_elem_proto ;
 struct bpf_func_proto const bpf_map_update_elem_proto ;
 struct bpf_func_proto const bpf_perf_event_read_proto ;
 struct bpf_func_proto const bpf_probe_read_proto ;
 struct bpf_func_proto const bpf_probe_read_str_proto ;
 struct bpf_func_proto const bpf_send_signal_proto ;
 struct bpf_func_proto const bpf_tail_call_proto ;

__attribute__((used)) static const struct bpf_func_proto *
tracing_func_proto(enum bpf_func_id func_id, const struct bpf_prog *prog)
{
 switch (func_id) {
 case 139:
  return &bpf_map_lookup_elem_proto;
 case 135:
  return &bpf_map_update_elem_proto;
 case 140:
  return &bpf_map_delete_elem_proto;
 case 136:
  return &bpf_map_push_elem_proto;
 case 137:
  return &bpf_map_pop_elem_proto;
 case 138:
  return &bpf_map_peek_elem_proto;
 case 133:
  return &bpf_probe_read_proto;
 case 141:
  return &bpf_ktime_get_ns_proto;
 case 129:
  return &bpf_tail_call_proto;
 case 147:
  return &bpf_get_current_pid_tgid_proto;
 case 146:
  return &bpf_get_current_task_proto;
 case 145:
  return &bpf_get_current_uid_gid_proto;
 case 148:
  return &bpf_get_current_comm_proto;
 case 128:
  return bpf_get_trace_printk_proto();
 case 142:
  return &bpf_get_smp_processor_id_proto;
 case 144:
  return &bpf_get_numa_node_id_proto;
 case 134:
  return &bpf_perf_event_read_proto;
 case 131:
  return bpf_get_probe_write_proto();
 case 150:
  return &bpf_current_task_under_cgroup_proto;
 case 143:
  return &bpf_get_prandom_u32_proto;
 case 132:
  return &bpf_probe_read_str_proto;




 case 130:
  return &bpf_send_signal_proto;
 default:
  return ((void*)0);
 }
}
