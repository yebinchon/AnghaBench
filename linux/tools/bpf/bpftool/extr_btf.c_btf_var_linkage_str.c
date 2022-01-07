
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;





__attribute__((used)) static const char *btf_var_linkage_str(__u32 linkage)
{
 switch (linkage) {
 case 128:
  return "static";
 case 129:
  return "global-alloc";
 default:
  return "(unknown)";
 }
}
