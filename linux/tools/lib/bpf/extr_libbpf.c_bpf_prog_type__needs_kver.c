
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bpf_prog_type { ____Placeholder_bpf_prog_type } bpf_prog_type ;
__attribute__((used)) static bool bpf_prog_type__needs_kver(enum bpf_prog_type type)
{
 switch (type) {
 case 132:
 case 136:
 case 137:
 case 128:
 case 152:
 case 151:
 case 144:
 case 143:
 case 141:
 case 142:
 case 131:
 case 133:
 case 153:
 case 135:
 case 149:
 case 145:
 case 134:
 case 147:
 case 129:
 case 130:
 case 139:
 case 138:
 case 140:
 case 148:
 case 150:
  return 0;
 case 146:
 default:
  return 1;
 }
}
