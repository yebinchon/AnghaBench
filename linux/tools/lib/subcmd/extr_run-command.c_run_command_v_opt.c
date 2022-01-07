
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child_process {int dummy; } ;


 int prepare_run_command_v_opt (struct child_process*,char const**,int) ;
 int run_command (struct child_process*) ;

int run_command_v_opt(const char **argv, int opt)
{
 struct child_process cmd;
 prepare_run_command_v_opt(&cmd, argv, opt);
 return run_command(&cmd);
}
