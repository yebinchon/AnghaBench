
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_stat_data {int* cstate; int* pstate; } ;


 int MAX_CPU ;
 int MAX_CSTATE_ENTRIES ;
 int MAX_PSTATE_ENTRIES ;
 int printf (char*,...) ;
 int sprintf (char*,char*,int) ;
 struct cpu_stat_data* stat_data ;

__attribute__((used)) static void cpu_stat_print(void)
{
 int i, j;
 char state_str[sizeof("cstate-9")];
 struct cpu_stat_data *data;


 printf("\033[2J");


 printf("\nCPU states statistics:\n");
 printf("%-10s ", "state(ms)");

 for (i = 0; i < MAX_CSTATE_ENTRIES; i++) {
  sprintf(state_str, "cstate-%d", i);
  printf("%-11s ", state_str);
 }

 for (i = 0; i < MAX_PSTATE_ENTRIES; i++) {
  sprintf(state_str, "pstate-%d", i);
  printf("%-11s ", state_str);
 }

 printf("\n");

 for (j = 0; j < MAX_CPU; j++) {
  data = &stat_data[j];

  printf("CPU-%-6d ", j);
  for (i = 0; i < MAX_CSTATE_ENTRIES; i++)
   printf("%-11ld ", data->cstate[i] / 1000000);

  for (i = 0; i < MAX_PSTATE_ENTRIES; i++)
   printf("%-11ld ", data->pstate[i] / 1000000);

  printf("\n");
 }
}
