
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* exec_name; char const* prefix; char const* exec_path; char const* exec_path_env; } ;


 TYPE_1__ subcmd_config ;

void exec_cmd_init(const char *exec_name, const char *prefix,
     const char *exec_path, const char *exec_path_env)
{
 subcmd_config.exec_name = exec_name;
 subcmd_config.prefix = prefix;
 subcmd_config.exec_path = exec_path;
 subcmd_config.exec_path_env = exec_path_env;
}
