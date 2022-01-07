
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int execv_dashed_external (char const**) ;
 int handle_internal_command (int,char const**) ;

__attribute__((used)) static int run_argv(int *argcp, const char ***argv)
{

 handle_internal_command(*argcp, *argv);


 execv_dashed_external(*argv);
 return 0;
}
