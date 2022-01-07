
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BPF_B ;
 int BPF_DW ;
 int BPF_H ;
 int BPF_W ;
 int atoi (char const*) ;

__attribute__((used)) static int
argtype_to_ldx_size(const char *type)
{
 int arg_size = type ? atoi(&type[1]) : 64;

 switch (arg_size) {
 case 8:
  return BPF_B;
 case 16:
  return BPF_H;
 case 32:
  return BPF_W;
 case 64:
 default:
  return BPF_DW;
 }
}
