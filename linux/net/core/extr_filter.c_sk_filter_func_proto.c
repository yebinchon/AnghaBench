
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
 struct bpf_func_proto const bpf_skb_event_output_proto ;
 struct bpf_func_proto const bpf_skb_load_bytes_proto ;
 struct bpf_func_proto const bpf_skb_load_bytes_relative_proto ;

__attribute__((used)) static const struct bpf_func_proto *
sk_filter_func_proto(enum bpf_func_id func_id, const struct bpf_prog *prog)
{
 switch (func_id) {
 case 129:
  return &bpf_skb_load_bytes_proto;
 case 128:
  return &bpf_skb_load_bytes_relative_proto;
 case 132:
  return &bpf_get_socket_cookie_proto;
 case 131:
  return &bpf_get_socket_uid_proto;
 case 130:
  return &bpf_skb_event_output_proto;
 default:
  return bpf_base_func_proto(func_id);
 }
}
