
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog {int dummy; } ;
struct bpf_func_proto {int dummy; } ;
typedef enum bpf_func_id { ____Placeholder_bpf_func_id } bpf_func_id ;
 struct bpf_func_proto const* bpf_base_func_proto (int) ;
 struct bpf_func_proto const bpf_csum_diff_proto ;
 struct bpf_func_proto const bpf_get_cgroup_classid_proto ;
 struct bpf_func_proto const bpf_get_hash_recalc_proto ;
 struct bpf_func_proto const bpf_get_route_realm_proto ;
 struct bpf_func_proto const bpf_get_smp_processor_id_proto ;
 struct bpf_func_proto const bpf_skb_event_output_proto ;
 struct bpf_func_proto const bpf_skb_load_bytes_proto ;
 struct bpf_func_proto const bpf_skb_pull_data_proto ;
 struct bpf_func_proto const bpf_skb_under_cgroup_proto ;

__attribute__((used)) static const struct bpf_func_proto *
lwt_out_func_proto(enum bpf_func_id func_id, const struct bpf_prog *prog)
{
 switch (func_id) {
 case 130:
  return &bpf_skb_load_bytes_proto;
 case 129:
  return &bpf_skb_pull_data_proto;
 case 136:
  return &bpf_csum_diff_proto;
 case 135:
  return &bpf_get_cgroup_classid_proto;
 case 133:
  return &bpf_get_route_realm_proto;
 case 134:
  return &bpf_get_hash_recalc_proto;
 case 131:
  return &bpf_skb_event_output_proto;
 case 132:
  return &bpf_get_smp_processor_id_proto;
 case 128:
  return &bpf_skb_under_cgroup_proto;
 default:
  return bpf_base_func_proto(func_id);
 }
}
