
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpu_set_t ;
typedef int __u32 ;


 int CHECK (int,char*,char*,int,int) ;
 int CPU_SET (int,int *) ;

__attribute__((used)) static void on_sample(void *ctx, int cpu, void *data, __u32 size)
{
 int cpu_data = *(int *)data, duration = 0;
 cpu_set_t *cpu_seen = ctx;

 if (cpu_data != cpu)
  CHECK(cpu_data != cpu, "check_cpu_data",
        "cpu_data %d != cpu %d\n", cpu_data, cpu);

 CPU_SET(cpu, cpu_seen);
}
