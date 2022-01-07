
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog {int dummy; } ;
struct bpf_func_proto {int dummy; } ;
typedef enum bpf_func_id { ____Placeholder_bpf_func_id } bpf_func_id ;
 struct bpf_func_proto const bpf_strtol_proto ;
 struct bpf_func_proto const bpf_strtoul_proto ;
 struct bpf_func_proto const bpf_sysctl_get_current_value_proto ;
 struct bpf_func_proto const bpf_sysctl_get_name_proto ;
 struct bpf_func_proto const bpf_sysctl_get_new_value_proto ;
 struct bpf_func_proto const bpf_sysctl_set_new_value_proto ;
 struct bpf_func_proto const* cgroup_base_func_proto (int,struct bpf_prog const*) ;

__attribute__((used)) static const struct bpf_func_proto *
sysctl_func_proto(enum bpf_func_id func_id, const struct bpf_prog *prog)
{
 switch (func_id) {
 case 133:
  return &bpf_strtol_proto;
 case 132:
  return &bpf_strtoul_proto;
 case 130:
  return &bpf_sysctl_get_name_proto;
 case 131:
  return &bpf_sysctl_get_current_value_proto;
 case 129:
  return &bpf_sysctl_get_new_value_proto;
 case 128:
  return &bpf_sysctl_set_new_value_proto;
 default:
  return cgroup_base_func_proto(func_id, prog);
 }
}
