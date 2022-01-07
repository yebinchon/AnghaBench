
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {char* name; unsigned long offset; } ;
struct section {char* name; } ;


 struct symbol* find_containing_func (struct section*,unsigned long) ;
 char* malloc (scalar_t__) ;
 int sprintf (char*,char*,char*,unsigned long) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static inline char *offstr(struct section *sec, unsigned long offset)
{
 struct symbol *func;
 char *name, *str;
 unsigned long name_off;

 func = find_containing_func(sec, offset);
 if (func) {
  name = func->name;
  name_off = offset - func->offset;
 } else {
  name = sec->name;
  name_off = offset;
 }

 str = malloc(strlen(name) + 20);

 if (func)
  sprintf(str, "%s()+0x%lx", name, name_off);
 else
  sprintf(str, "%s+0x%lx", name, name_off);

 return str;
}
