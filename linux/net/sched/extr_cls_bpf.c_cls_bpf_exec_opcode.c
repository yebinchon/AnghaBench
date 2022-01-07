
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int cls_bpf_exec_opcode(int code)
{
 switch (code) {
 case 133:
 case 131:
 case 130:
 case 129:
 case 132:
 case 128:
  return code;
 default:
  return 128;
 }
}
