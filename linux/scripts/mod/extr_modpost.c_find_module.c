
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int name; struct module* next; } ;


 struct module* modules ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static struct module *find_module(const char *modname)
{
 struct module *mod;

 for (mod = modules; mod; mod = mod->next)
  if (strcmp(mod->name, modname) == 0)
   break;
 return mod;
}
