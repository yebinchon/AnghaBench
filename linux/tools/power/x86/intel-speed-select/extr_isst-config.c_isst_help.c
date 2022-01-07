
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

__attribute__((used)) static void isst_help(void)
{
 printf("perf-profile:\tAn architectural mechanism that allows multiple optimized \n		performance profiles per system via static and/or dynamic\n		adjustment of core count, workload, Tjmax, and\n		TDP, etc.\n");



 printf("\nCommands : For feature=perf-profile\n");
 printf("\tinfo\n");
 printf("\tget-lock-status\n");
 printf("\tget-config-levels\n");
 printf("\tget-config-version\n");
 printf("\tget-config-enabled\n");
 printf("\tget-config-current-level\n");
 printf("\tset-config-level\n");
}
