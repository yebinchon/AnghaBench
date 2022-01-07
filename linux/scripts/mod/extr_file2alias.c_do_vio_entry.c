
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEF_FIELD_ADDR (void*,int ,char**) ;
 int add_wildcard (char*) ;
 char** compat ;
 scalar_t__ isspace (char) ;
 int sprintf (char*,char*,char*,char*) ;
 char** type ;
 int vio_device_id ;

__attribute__((used)) static int do_vio_entry(const char *filename, void *symval,
  char *alias)
{
 char *tmp;
 DEF_FIELD_ADDR(symval, vio_device_id, type);
 DEF_FIELD_ADDR(symval, vio_device_id, compat);

 sprintf(alias, "vio:T%sS%s", (*type)[0] ? *type : "*",
   (*compat)[0] ? *compat : "*");


 for (tmp = alias; tmp && *tmp; tmp++)
  if (isspace (*tmp))
   *tmp = '_';

 add_wildcard(alias);
 return 1;
}
