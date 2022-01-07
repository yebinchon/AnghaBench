
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog {int dummy; } ;
struct bpf_func_proto {int dummy; } ;
typedef enum bpf_func_id { ____Placeholder_bpf_func_id } bpf_func_id ;
 struct bpf_func_proto const* bpf_base_func_proto (int) ;
 struct bpf_func_proto const bpf_csum_diff_proto ;
 struct bpf_func_proto const bpf_get_smp_processor_id_proto ;
 struct bpf_func_proto const bpf_sk_release_proto ;
 struct bpf_func_proto const bpf_tcp_check_syncookie_proto ;
 struct bpf_func_proto const bpf_tcp_gen_syncookie_proto ;
 struct bpf_func_proto const bpf_xdp_adjust_head_proto ;
 struct bpf_func_proto const bpf_xdp_adjust_meta_proto ;
 struct bpf_func_proto const bpf_xdp_adjust_tail_proto ;
 struct bpf_func_proto const bpf_xdp_event_output_proto ;
 struct bpf_func_proto const bpf_xdp_fib_lookup_proto ;
 struct bpf_func_proto const bpf_xdp_redirect_map_proto ;
 struct bpf_func_proto const bpf_xdp_redirect_proto ;
 struct bpf_func_proto const bpf_xdp_sk_lookup_tcp_proto ;
 struct bpf_func_proto const bpf_xdp_sk_lookup_udp_proto ;
 struct bpf_func_proto const bpf_xdp_skc_lookup_tcp_proto ;

__attribute__((used)) static const struct bpf_func_proto *
xdp_func_proto(enum bpf_func_id func_id, const struct bpf_prog *prog)
{
 switch (func_id) {
 case 139:
  return &bpf_xdp_event_output_proto;
 case 140:
  return &bpf_get_smp_processor_id_proto;
 case 142:
  return &bpf_csum_diff_proto;
 case 130:
  return &bpf_xdp_adjust_head_proto;
 case 129:
  return &bpf_xdp_adjust_meta_proto;
 case 138:
  return &bpf_xdp_redirect_proto;
 case 137:
  return &bpf_xdp_redirect_map_proto;
 case 128:
  return &bpf_xdp_adjust_tail_proto;
 case 141:
  return &bpf_xdp_fib_lookup_proto;
 default:
  return bpf_base_func_proto(func_id);
 }
}
