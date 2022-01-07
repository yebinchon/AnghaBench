
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enter_kgdb; } ;


 int KDB_TSK (int) ;
 int NR_CPUS ;
 int cpu_online (int) ;
 int kdb_printf (char*,...) ;
 char kdb_task_state_char (int ) ;
 TYPE_1__* kgdb_info ;
 int raw_smp_processor_id () ;

__attribute__((used)) static void kdb_cpu_status(void)
{
 int i, start_cpu, first_print = 1;
 char state, prev_state = '?';

 kdb_printf("Currently on cpu %d\n", raw_smp_processor_id());
 kdb_printf("Available cpus: ");
 for (start_cpu = -1, i = 0; i < NR_CPUS; i++) {
  if (!cpu_online(i)) {
   state = 'F';
  } else if (!kgdb_info[i].enter_kgdb) {
   state = 'D';
  } else {
   state = ' ';
   if (kdb_task_state_char(KDB_TSK(i)) == 'I')
    state = 'I';
  }
  if (state != prev_state) {
   if (prev_state != '?') {
    if (!first_print)
     kdb_printf(", ");
    first_print = 0;
    kdb_printf("%d", start_cpu);
    if (start_cpu < i-1)
     kdb_printf("-%d", i-1);
    if (prev_state != ' ')
     kdb_printf("(%c)", prev_state);
   }
   prev_state = state;
   start_cpu = i;
  }
 }

 if (prev_state != 'F') {
  if (!first_print)
   kdb_printf(", ");
  kdb_printf("%d", start_cpu);
  if (start_cpu < i-1)
   kdb_printf("-%d", i-1);
  if (prev_state != ' ')
   kdb_printf("(%c)", prev_state);
 }
 kdb_printf("\n");
}
