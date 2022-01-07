
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bpf_prog_type { ____Placeholder_bpf_prog_type } bpf_prog_type ;







__attribute__((used)) static bool is_tracing_prog_type(enum bpf_prog_type type)
{
 switch (type) {
 case 131:
 case 128:
 case 130:
 case 129:
  return 1;
 default:
  return 0;
 }
}
