
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;

__attribute__((used)) static bool is_var_ref(char *var_name)
{
 if (!var_name || strlen(var_name) < 2 || var_name[0] != '$')
  return 0;

 return 1;
}
