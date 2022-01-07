
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog {int dummy; } ;
struct bpf_func_proto {int dummy; } ;
typedef enum bpf_func_id { ____Placeholder_bpf_func_id } bpf_func_id ;
 struct bpf_func_proto const* bpf_base_func_proto (int) ;
 struct bpf_func_proto const bpf_get_local_storage_proto ;
 struct bpf_func_proto const bpf_get_socket_cookie_sock_ops_proto ;
 struct bpf_func_proto const bpf_getsockopt_proto ;
 struct bpf_func_proto const bpf_setsockopt_proto ;
 struct bpf_func_proto const bpf_sk_storage_delete_proto ;
 struct bpf_func_proto const bpf_sk_storage_get_proto ;
 struct bpf_func_proto const bpf_sock_hash_update_proto ;
 struct bpf_func_proto const bpf_sock_map_update_proto ;
 struct bpf_func_proto const bpf_sock_ops_cb_flags_set_proto ;
 struct bpf_func_proto const bpf_sockopt_event_output_proto ;
 struct bpf_func_proto const bpf_tcp_sock_proto ;

__attribute__((used)) static const struct bpf_func_proto *
sock_ops_func_proto(enum bpf_func_id func_id, const struct bpf_prog *prog)
{
 switch (func_id) {
 case 134:
  return &bpf_setsockopt_proto;
 case 136:
  return &bpf_getsockopt_proto;
 case 129:
  return &bpf_sock_ops_cb_flags_set_proto;
 case 130:
  return &bpf_sock_map_update_proto;
 case 131:
  return &bpf_sock_hash_update_proto;
 case 137:
  return &bpf_get_socket_cookie_sock_ops_proto;
 case 138:
  return &bpf_get_local_storage_proto;
 case 135:
  return &bpf_sockopt_event_output_proto;
 case 132:
  return &bpf_sk_storage_get_proto;
 case 133:
  return &bpf_sk_storage_delete_proto;




 default:
  return bpf_base_func_proto(func_id);
 }
}
