
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {char const* name; int dev_table_buf; } ;


 int ALIAS_SIZE ;
 int buf_printf (int *,char*,char*) ;
 int device_id_check (char const*,char const*,unsigned long,unsigned long,void*) ;

__attribute__((used)) static void do_table(void *symval, unsigned long size,
       unsigned long id_size,
       const char *device_id,
       int (*do_entry)(const char *filename, void *symval, char *alias),
       struct module *mod)
{
 unsigned int i;
 char alias[ALIAS_SIZE];

 device_id_check(mod->name, device_id, size, id_size, symval);

 size -= id_size;

 for (i = 0; i < size; i += id_size) {
  if (do_entry(mod->name, symval+i, alias)) {
   buf_printf(&mod->dev_table_buf,
       "MODULE_ALIAS(\"%s\");\n", alias);
  }
 }
}
