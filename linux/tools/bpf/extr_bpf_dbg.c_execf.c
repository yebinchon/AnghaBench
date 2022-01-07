
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; int (* func ) (char*) ;} ;


 int array_size (TYPE_1__*) ;
 TYPE_1__* cmds ;
 int free (char*) ;
 char* strdup (char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 char* strtok_r (char*,char*,char**) ;
 int stub1 (char*) ;

__attribute__((used)) static int execf(char *arg)
{
 char *cmd, *cont, *tmp = strdup(arg);
 int i, ret = 0, len;

 cmd = strtok_r(tmp, " ", &cont);
 if (cmd == ((void*)0))
  goto out;
 len = strlen(cmd);
 for (i = 0; i < array_size(cmds); i++) {
  if (len != strlen(cmds[i].name))
   continue;
  if (strncmp(cmds[i].name, cmd, len) == 0) {
   ret = cmds[i].func(cont);
   break;
  }
 }
out:
 free(tmp);
 return ret;
}
