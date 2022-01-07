
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static unsigned int type_size(const char *name)
{

 static struct {
  const char *type;
  unsigned int size;
 } table[] = {
  { "u8", 1 },
  { "u16", 2 },
  { "u32", 4 },
  { "u64", 8 },
  { "s8", 1 },
  { "s16", 2 },
  { "s32", 4 },
  { "s64", 8 },
  { "char", 1 },
  { },
 };
 int i;

 for (i = 0; table[i].type; i++) {
  if (!strcmp(table[i].type, name))
   return table[i].size;
 }

 return 0;
}
