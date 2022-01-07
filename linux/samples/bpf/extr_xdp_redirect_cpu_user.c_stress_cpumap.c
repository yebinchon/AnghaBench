
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int create_cpu_entry (int,int,int ,int) ;

__attribute__((used)) static void stress_cpumap(void)
{




 create_cpu_entry(1, 1024, 0, 0);
 create_cpu_entry(1, 8, 0, 0);
 create_cpu_entry(1, 16000, 0, 0);
}
