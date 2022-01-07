
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum symbol_type { ____Placeholder_symbol_type } symbol_type ;
const char *sym_type_name(enum symbol_type type)
{
 switch (type) {
 case 133:
  return "bool";
 case 129:
  return "tristate";
 case 131:
  return "integer";
 case 132:
  return "hex";
 case 130:
  return "string";
 case 128:
  return "unknown";
 }
 return "???";
}
