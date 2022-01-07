
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog {int dummy; } ;
struct bpf_func_proto {int dummy; } ;
typedef enum bpf_func_id { ____Placeholder_bpf_func_id } bpf_func_id ;
 struct bpf_func_proto const bpf_get_listener_sock_proto ;
 struct bpf_func_proto const bpf_get_local_storage_proto ;
 struct bpf_func_proto const bpf_sk_fullsock_proto ;
 struct bpf_func_proto const bpf_sk_storage_delete_proto ;
 struct bpf_func_proto const bpf_sk_storage_get_proto ;
 struct bpf_func_proto const bpf_skb_cgroup_id_proto ;
 struct bpf_func_proto const bpf_skb_ecn_set_ce_proto ;
 struct bpf_func_proto const bpf_skb_event_output_proto ;
 struct bpf_func_proto const bpf_tcp_sock_proto ;
 struct bpf_func_proto const* sk_filter_func_proto (int,struct bpf_prog const*) ;

__attribute__((used)) static const struct bpf_func_proto *
cg_skb_func_proto(enum bpf_func_id func_id, const struct bpf_prog *prog)
{
 switch (func_id) {
 case 135:
  return &bpf_get_local_storage_proto;
 case 133:
  return &bpf_sk_fullsock_proto;
 case 131:
  return &bpf_sk_storage_get_proto;
 case 132:
  return &bpf_sk_storage_delete_proto;
 case 134:
  return &bpf_skb_event_output_proto;
 default:
  return sk_filter_func_proto(func_id, prog);
 }
}
