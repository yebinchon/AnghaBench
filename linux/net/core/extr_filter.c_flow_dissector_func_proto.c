
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog {int dummy; } ;
struct bpf_func_proto {int dummy; } ;
typedef enum bpf_func_id { ____Placeholder_bpf_func_id } bpf_func_id ;



 struct bpf_func_proto const* bpf_base_func_proto (int) ;
 struct bpf_func_proto const bpf_flow_dissector_load_bytes_proto ;

__attribute__((used)) static const struct bpf_func_proto *
flow_dissector_func_proto(enum bpf_func_id func_id, const struct bpf_prog *prog)
{
 switch (func_id) {
 case 128:
  return &bpf_flow_dissector_load_bytes_proto;
 default:
  return bpf_base_func_proto(func_id);
 }
}
