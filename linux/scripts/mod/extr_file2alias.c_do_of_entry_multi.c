
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dev_table_buf; } ;


 int DEF_FIELD_ADDR (void*,int ,char**) ;
 int add_wildcard (char*) ;
 int buf_printf (int *,char*,char*) ;
 char** compatible ;
 scalar_t__ isspace (char) ;
 char** name ;
 int of_device_id ;
 int sprintf (char*,char*,char*,char*) ;
 int strcat (char*,char*) ;
 char** type ;

__attribute__((used)) static void do_of_entry_multi(void *symval, struct module *mod)
{
 char alias[500];
 int len;
 char *tmp;

 DEF_FIELD_ADDR(symval, of_device_id, name);
 DEF_FIELD_ADDR(symval, of_device_id, type);
 DEF_FIELD_ADDR(symval, of_device_id, compatible);

 len = sprintf(alias, "of:N%sT%s", (*name)[0] ? *name : "*",
        (*type)[0] ? *type : "*");

 if ((*compatible)[0])
  sprintf(&alias[len], "%sC%s", (*type)[0] ? "*" : "",
   *compatible);


 for (tmp = alias; tmp && *tmp; tmp++)
  if (isspace(*tmp))
   *tmp = '_';

 buf_printf(&mod->dev_table_buf, "MODULE_ALIAS(\"%s\");\n", alias);
 strcat(alias, "C");
 add_wildcard(alias);
 buf_printf(&mod->dev_table_buf, "MODULE_ALIAS(\"%s\");\n", alias);
}
