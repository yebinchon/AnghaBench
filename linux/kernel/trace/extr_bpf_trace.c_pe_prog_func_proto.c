
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog {int dummy; } ;
struct bpf_func_proto {int dummy; } ;
typedef enum bpf_func_id { ____Placeholder_bpf_func_id } bpf_func_id ;






 struct bpf_func_proto const bpf_get_stack_proto_tp ;
 struct bpf_func_proto const bpf_get_stackid_proto_tp ;
 struct bpf_func_proto const bpf_perf_event_output_proto_tp ;
 struct bpf_func_proto const bpf_perf_prog_read_value_proto ;
 struct bpf_func_proto const* tracing_func_proto (int,struct bpf_prog const*) ;

__attribute__((used)) static const struct bpf_func_proto *
pe_prog_func_proto(enum bpf_func_id func_id, const struct bpf_prog *prog)
{
 switch (func_id) {
 case 129:
  return &bpf_perf_event_output_proto_tp;
 case 130:
  return &bpf_get_stackid_proto_tp;
 case 131:
  return &bpf_get_stack_proto_tp;
 case 128:
  return &bpf_perf_prog_read_value_proto;
 default:
  return tracing_func_proto(func_id, prog);
 }
}
