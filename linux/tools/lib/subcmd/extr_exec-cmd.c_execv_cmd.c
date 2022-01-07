
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exec_name; } ;


 int execvp (int ,char**) ;
 int free (char const**) ;
 char** prepare_exec_cmd (char const**) ;
 TYPE_1__ subcmd_config ;

int execv_cmd(const char **argv) {
 const char **nargv = prepare_exec_cmd(argv);


 execvp(subcmd_config.exec_name, (char **)nargv);

 free(nargv);
 return -1;
}
