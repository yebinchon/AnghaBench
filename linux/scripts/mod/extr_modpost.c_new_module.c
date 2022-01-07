
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int is_dot_o; char* name; int gpl_compatible; struct module* next; } ;


 void* NOFAIL (int ) ;
 int malloc (int) ;
 int memset (struct module*,int ,int) ;
 struct module* modules ;
 int strdup (char const*) ;
 scalar_t__ strends (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static struct module *new_module(const char *modname)
{
 struct module *mod;
 char *p;

 mod = NOFAIL(malloc(sizeof(*mod)));
 memset(mod, 0, sizeof(*mod));
 p = NOFAIL(strdup(modname));


 if (strends(p, ".o")) {
  p[strlen(p) - 2] = '\0';
  mod->is_dot_o = 1;
 }


 mod->name = p;
 mod->gpl_compatible = -1;
 mod->next = modules;
 modules = mod;

 return mod;
}
