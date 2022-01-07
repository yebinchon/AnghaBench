
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum symbol_type { ____Placeholder_symbol_type } symbol_type ;
__attribute__((used)) static enum symbol_type map_to_ns(enum symbol_type t)
{
 switch (t) {
 case 132:
 case 131:
 case 129:
  return 131;
 case 133:
 case 130:
 case 128:
  return 130;
 }
 return t;
}
