
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dso {int symtab_type; int kernel; } ;
typedef enum dso_binary_type { ____Placeholder_dso_binary_type } dso_binary_type ;
 int DSO_TYPE_GUEST_KERNEL ;
 int DSO_TYPE_KERNEL ;
 int DSO_TYPE_USER ;

__attribute__((used)) static bool dso__is_compatible_symtab_type(struct dso *dso, bool kmod,
        enum dso_binary_type type)
{
 switch (type) {
 case 137:
 case 144:
 case 132:
 case 143:
 case 129:
 case 147:
 case 133:
  return !kmod && dso->kernel == DSO_TYPE_USER;

 case 136:
 case 128:
 case 135:
  return dso->kernel == DSO_TYPE_KERNEL;

 case 142:
 case 138:
 case 141:
  return dso->kernel == DSO_TYPE_GUEST_KERNEL;

 case 140:
 case 139:
 case 131:
 case 130:




  return kmod && dso->symtab_type == type;

 case 146:
 case 145:
  return 1;

 case 148:
 case 134:
 default:
  return 0;
 }
}
