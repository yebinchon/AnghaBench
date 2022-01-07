
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config {int cpu; int prio; scalar_t__ verbose; } ;


 int PRIORITY_DEFAULT ;
 int PRIORITY_HIGH ;
 int PRIORITY_LOW ;


 int printf (char*,...) ;
 int set_cpu_affinity (int) ;
 int set_process_priority (int ) ;

void prepare_system(const struct config *config)
{
 if (config->verbose)
  printf("set cpu affinity to cpu #%u\n", config->cpu);

 set_cpu_affinity(config->cpu);

 switch (config->prio) {
 case 129:
  if (config->verbose)
   printf("high priority condition requested\n");

  set_process_priority(PRIORITY_HIGH);
  break;
 case 128:
  if (config->verbose)
   printf("low priority condition requested\n");

  set_process_priority(PRIORITY_LOW);
  break;
 default:
  if (config->verbose)
   printf("default priority condition requested\n");

  set_process_priority(PRIORITY_DEFAULT);
 }
}
