
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exec_path; int exec_path_env; } ;


 char* argv_exec_path ;
 char* getenv (int ) ;
 char* strdup (char*) ;
 TYPE_1__ subcmd_config ;
 char* system_path (int ) ;

char *get_argv_exec_path(void)
{
 char *env;

 if (argv_exec_path)
  return strdup(argv_exec_path);

 env = getenv(subcmd_config.exec_path_env);
 if (env && *env)
  return strdup(env);

 return system_path(subcmd_config.exec_path);
}
