
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exec_path_env; } ;


 char const* argv_exec_path ;
 int setenv (int ,char const*,int) ;
 TYPE_1__ subcmd_config ;

void set_argv_exec_path(const char *exec_path)
{
 argv_exec_path = exec_path;



 setenv(subcmd_config.exec_path_env, exec_path, 1);
}
