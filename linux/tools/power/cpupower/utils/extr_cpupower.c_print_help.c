
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* cmd; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 char* _ (char*) ;
 TYPE_1__* commands ;
 int printf (char*,...) ;

__attribute__((used)) static void print_help(void)
{
 unsigned int i;




 printf(_("Usage:\tcpupower [-c|--cpu cpulist ] <command> [<args>]\n"));

 printf(_("Supported commands are:\n"));
 for (i = 0; i < ARRAY_SIZE(commands); i++)
  printf("\t%s\n", commands[i].cmd);
 printf(_("\nNot all commands can make use of the -c cpulist option.\n"));
 printf(_("\nUse 'cpupower help <command>' for getting help for above commands.\n"));
}
