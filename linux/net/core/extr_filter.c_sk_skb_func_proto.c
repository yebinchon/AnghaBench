
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog {int dummy; } ;
struct bpf_func_proto {int dummy; } ;
typedef enum bpf_func_id { ____Placeholder_bpf_func_id } bpf_func_id ;
 struct bpf_func_proto const* bpf_base_func_proto (int) ;
 struct bpf_func_proto const bpf_get_socket_cookie_proto ;
 struct bpf_func_proto const bpf_get_socket_uid_proto ;
 struct bpf_func_proto const bpf_sk_lookup_tcp_proto ;
 struct bpf_func_proto const bpf_sk_lookup_udp_proto ;
 struct bpf_func_proto const bpf_sk_redirect_hash_proto ;
 struct bpf_func_proto const bpf_sk_redirect_map_proto ;
 struct bpf_func_proto const bpf_sk_release_proto ;
 struct bpf_func_proto const bpf_skb_event_output_proto ;
 struct bpf_func_proto const bpf_skb_load_bytes_proto ;
 struct bpf_func_proto const bpf_skb_store_bytes_proto ;
 struct bpf_func_proto const bpf_skc_lookup_tcp_proto ;
 struct bpf_func_proto const sk_skb_change_head_proto ;
 struct bpf_func_proto const sk_skb_change_tail_proto ;
 struct bpf_func_proto const sk_skb_pull_data_proto ;

__attribute__((used)) static const struct bpf_func_proto *
sk_skb_func_proto(enum bpf_func_id func_id, const struct bpf_prog *prog)
{
 switch (func_id) {
 case 129:
  return &bpf_skb_store_bytes_proto;
 case 131:
  return &bpf_skb_load_bytes_proto;
 case 130:
  return &sk_skb_pull_data_proto;
 case 132:
  return &sk_skb_change_tail_proto;
 case 133:
  return &sk_skb_change_head_proto;
 case 141:
  return &bpf_get_socket_cookie_proto;
 case 140:
  return &bpf_get_socket_uid_proto;
 case 135:
  return &bpf_sk_redirect_map_proto;
 case 136:
  return &bpf_sk_redirect_hash_proto;
 case 139:
  return &bpf_skb_event_output_proto;
 default:
  return bpf_base_func_proto(func_id);
 }
}
