
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kdb_initial_cpu ;
 int kdb_printf (char*,char const*,int ,int,int ,int ) ;
 int kdb_state ;
 int raw_smp_processor_id () ;

void kdb_print_state(const char *text, int value)
{
 kdb_printf("state: %s cpu %d value %d initial %d state %x\n",
     text, raw_smp_processor_id(), value, kdb_initial_cpu,
     kdb_state);
}
