
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog {int expected_attach_type; } ;
struct bpf_func_proto {int dummy; } ;
typedef enum bpf_func_id { ____Placeholder_bpf_func_id } bpf_func_id ;
 struct bpf_func_proto const* bpf_base_func_proto (int) ;
 struct bpf_func_proto const bpf_bind_proto ;
 struct bpf_func_proto const bpf_get_current_uid_gid_proto ;
 struct bpf_func_proto const bpf_get_local_storage_proto ;
 struct bpf_func_proto const bpf_get_socket_cookie_sock_addr_proto ;
 struct bpf_func_proto const bpf_sk_release_proto ;
 struct bpf_func_proto const bpf_sk_storage_delete_proto ;
 struct bpf_func_proto const bpf_sk_storage_get_proto ;
 struct bpf_func_proto const bpf_sock_addr_sk_lookup_tcp_proto ;
 struct bpf_func_proto const bpf_sock_addr_sk_lookup_udp_proto ;
 struct bpf_func_proto const bpf_sock_addr_skc_lookup_tcp_proto ;

__attribute__((used)) static const struct bpf_func_proto *
sock_addr_func_proto(enum bpf_func_id func_id, const struct bpf_prog *prog)
{
 switch (func_id) {



 case 136:
  return &bpf_get_current_uid_gid_proto;
 case 137:
  switch (prog->expected_attach_type) {
  case 139:
  case 138:
   return &bpf_bind_proto;
  default:
   return ((void*)0);
  }
 case 134:
  return &bpf_get_socket_cookie_sock_addr_proto;
 case 135:
  return &bpf_get_local_storage_proto;
 case 129:
  return &bpf_sk_storage_get_proto;
 case 130:
  return &bpf_sk_storage_delete_proto;
 default:
  return bpf_base_func_proto(func_id);
 }
}
