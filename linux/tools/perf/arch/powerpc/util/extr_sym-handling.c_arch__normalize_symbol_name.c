
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *arch__normalize_symbol_name(const char *name)
{

 if (name && *name == '.')
  name++;
 return name;
}
