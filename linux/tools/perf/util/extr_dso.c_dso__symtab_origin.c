
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dso {size_t symtab_type; } ;
 size_t DSO_BINARY_TYPE__NOT_FOUND ;







char dso__symtab_origin(const struct dso *dso)
{
 static const char origin[] = {
  [134] = 'k',
  [128] = 'v',
  [135] = 'j',
  [141] = 'l',
  [143] = 'B',
  [142] = 'D',
  [140] = 'f',
  [129] = 'u',
  [133] = 'o',
  [144] = 'b',
  [132] = 'd',
  [131] = 'K',
  [130] = 'm',
  [139] = 'g',
  [138] = 'G',
  [137] = 'M',
  [136] = 'V',
 };

 if (dso == ((void*)0) || dso->symtab_type == DSO_BINARY_TYPE__NOT_FOUND)
  return '!';
 return origin[dso->symtab_type];
}
