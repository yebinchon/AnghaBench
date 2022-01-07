
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

__attribute__((used)) static void core_power_help(void)
{
 printf("core-power:\tInterface that allows user to define per core/tile\n		priority.\n");

 printf("\nCommands : For feature=core-power\n");
 printf("\tinfo\n");
 printf("\tenable\n");
 printf("\tdisable\n");
 printf("\tconfig\n");
 printf("\tget-config\n");
 printf("\tassoc\n");
 printf("\tget-assoc\n");
}
