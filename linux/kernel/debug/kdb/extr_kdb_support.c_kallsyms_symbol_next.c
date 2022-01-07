
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ loff_t ;


 char* kdb_walk_kallsyms (scalar_t__*) ;
 int strlen (char*) ;
 int strncmp (char const*,char*,int) ;
 int strscpy (char*,char const*,int) ;

int kallsyms_symbol_next(char *prefix_name, int flag, int buf_size)
{
 int prefix_len = strlen(prefix_name);
 static loff_t pos;
 const char *name;

 if (!flag)
  pos = 0;

 while ((name = kdb_walk_kallsyms(&pos))) {
  if (!strncmp(name, prefix_name, prefix_len))
   return strscpy(prefix_name, name, buf_size);
 }
 return 0;
}
