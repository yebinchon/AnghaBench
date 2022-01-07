
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog {int dummy; } ;
struct bpf_func_proto {int dummy; } ;
typedef enum bpf_func_id { ____Placeholder_bpf_func_id } bpf_func_id ;





 struct bpf_func_proto const bpf_sk_storage_delete_proto ;
 struct bpf_func_proto const bpf_sk_storage_get_proto ;
 struct bpf_func_proto const bpf_tcp_sock_proto ;
 struct bpf_func_proto const* cgroup_base_func_proto (int,struct bpf_prog const*) ;

__attribute__((used)) static const struct bpf_func_proto *
cg_sockopt_func_proto(enum bpf_func_id func_id, const struct bpf_prog *prog)
{
 switch (func_id) {
 default:
  return cgroup_base_func_proto(func_id, prog);
 }
}
