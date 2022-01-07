
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* exec_name; } ;


 char** malloc (int) ;
 TYPE_1__ subcmd_config ;

__attribute__((used)) static const char **prepare_exec_cmd(const char **argv)
{
 int argc;
 const char **nargv;

 for (argc = 0; argv[argc]; argc++)
  ;
 nargv = malloc(sizeof(*nargv) * (argc + 2));

 nargv[0] = subcmd_config.exec_name;
 for (argc = 0; argv[argc]; argc++)
  nargv[argc + 1] = argv[argc];
 nargv[argc + 1] = ((void*)0);
 return nargv;
}
