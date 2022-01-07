
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog {int dummy; } ;
struct bpf_func_proto {int dummy; } ;
typedef enum bpf_func_id { ____Placeholder_bpf_func_id } bpf_func_id ;
 struct bpf_func_proto const* bpf_base_func_proto (int) ;
 struct bpf_func_proto const bpf_msg_apply_bytes_proto ;
 struct bpf_func_proto const bpf_msg_cork_bytes_proto ;
 struct bpf_func_proto const bpf_msg_pop_data_proto ;
 struct bpf_func_proto const bpf_msg_pull_data_proto ;
 struct bpf_func_proto const bpf_msg_push_data_proto ;
 struct bpf_func_proto const bpf_msg_redirect_hash_proto ;
 struct bpf_func_proto const bpf_msg_redirect_map_proto ;

__attribute__((used)) static const struct bpf_func_proto *
sk_msg_func_proto(enum bpf_func_id func_id, const struct bpf_prog *prog)
{
 switch (func_id) {
 case 128:
  return &bpf_msg_redirect_map_proto;
 case 129:
  return &bpf_msg_redirect_hash_proto;
 case 134:
  return &bpf_msg_apply_bytes_proto;
 case 133:
  return &bpf_msg_cork_bytes_proto;
 case 131:
  return &bpf_msg_pull_data_proto;
 case 130:
  return &bpf_msg_push_data_proto;
 case 132:
  return &bpf_msg_pop_data_proto;
 default:
  return bpf_base_func_proto(func_id);
 }
}
