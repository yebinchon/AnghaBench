
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {char* name; } ;


 scalar_t__ MODULE_NAME_LEN ;
 int merror (char*,char*) ;
 scalar_t__ strlen (char const*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static int check_modname_len(struct module *mod)
{
 const char *mod_name;

 mod_name = strrchr(mod->name, '/');
 if (mod_name == ((void*)0))
  mod_name = mod->name;
 else
  mod_name++;
 if (strlen(mod_name) >= MODULE_NAME_LEN) {
  merror("module name is too long [%s.ko]\n", mod->name);
  return 1;
 }

 return 0;
}
