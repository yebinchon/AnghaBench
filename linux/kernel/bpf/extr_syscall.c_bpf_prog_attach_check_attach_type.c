
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog {int type; int expected_attach_type; int enforce_expected_attach_type; } ;
typedef enum bpf_attach_type { ____Placeholder_bpf_attach_type } bpf_attach_type ;






 int EINVAL ;

__attribute__((used)) static int bpf_prog_attach_check_attach_type(const struct bpf_prog *prog,
          enum bpf_attach_type attach_type)
{
 switch (prog->type) {
 case 130:
 case 128:
 case 129:
  return attach_type == prog->expected_attach_type ? 0 : -EINVAL;
 case 131:
  return prog->enforce_expected_attach_type &&
   prog->expected_attach_type != attach_type ?
   -EINVAL : 0;
 default:
  return 0;
 }
}
