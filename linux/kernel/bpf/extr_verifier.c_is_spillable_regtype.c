
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bpf_reg_type { ____Placeholder_bpf_reg_type } bpf_reg_type ;
__attribute__((used)) static bool is_spillable_regtype(enum bpf_reg_type type)
{
 switch (type) {
 case 140:
 case 139:
 case 131:
 case 142:
 case 138:
 case 136:
 case 137:
 case 141:
 case 143:
 case 135:
 case 134:
 case 133:
 case 132:
 case 130:
 case 129:
 case 128:
  return 1;
 default:
  return 0;
 }
}
