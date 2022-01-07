
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bpf_prog_type { ____Placeholder_bpf_prog_type } bpf_prog_type ;
typedef enum bpf_attach_type { ____Placeholder_bpf_attach_type } bpf_attach_type ;
 int EINVAL ;

__attribute__((used)) static int
bpf_prog_load_check_attach_type(enum bpf_prog_type prog_type,
    enum bpf_attach_type expected_attach_type)
{
 switch (prog_type) {
 case 130:
  switch (expected_attach_type) {
  case 137:
  case 143:
  case 140:
   return 0;
  default:
   return -EINVAL;
  }
 case 128:
  switch (expected_attach_type) {
  case 145:
  case 142:
  case 144:
  case 141:
  case 134:
  case 132:
  case 135:
  case 133:
   return 0;
  default:
   return -EINVAL;
  }
 case 131:
  switch (expected_attach_type) {
  case 138:
  case 139:
   return 0;
  default:
   return -EINVAL;
  }
 case 129:
  switch (expected_attach_type) {
  case 136:
  case 146:
   return 0;
  default:
   return -EINVAL;
  }
 default:
  return 0;
 }
}
