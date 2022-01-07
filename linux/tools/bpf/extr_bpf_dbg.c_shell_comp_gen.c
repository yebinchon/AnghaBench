
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; } ;


 int array_size (TYPE_1__*) ;
 TYPE_1__* cmds ;
 char* strdup (char const*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;

__attribute__((used)) static char *shell_comp_gen(const char *buf, int state)
{
 static int list_index, len;

 if (!state) {
  list_index = 0;
  len = strlen(buf);
 }

 for (; list_index < array_size(cmds); ) {
  const char *name = cmds[list_index].name;

  list_index++;
  if (strncmp(name, buf, len) == 0)
   return strdup(name);
 }

 return ((void*)0);
}
