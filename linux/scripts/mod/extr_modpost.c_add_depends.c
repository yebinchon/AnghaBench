
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol {TYPE_1__* module; struct symbol* next; } ;
struct module {struct symbol* unres; } ;
struct buffer {int dummy; } ;
struct TYPE_2__ {int seen; char* name; } ;


 int buf_printf (struct buffer*,char*,...) ;
 int is_vmlinux (char*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static void add_depends(struct buffer *b, struct module *mod)
{
 struct symbol *s;
 int first = 1;


 for (s = mod->unres; s; s = s->next)
  if (s->module)
   s->module->seen = is_vmlinux(s->module->name);

 buf_printf(b, "\n");
 buf_printf(b, "MODULE_INFO(depends, \"");
 for (s = mod->unres; s; s = s->next) {
  const char *p;
  if (!s->module)
   continue;

  if (s->module->seen)
   continue;

  s->module->seen = 1;
  p = strrchr(s->module->name, '/');
  if (p)
   p++;
  else
   p = s->module->name;
  buf_printf(b, "%s%s", first ? "" : ",", p);
  first = 0;
 }
 buf_printf(b, "\");\n");
}
