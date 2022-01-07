
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVEN_COUNTERS ;
 int ODD_COUNTERS ;
 int init_counter (int ,int) ;

int initialize_counters(int cpu_id)
{
 init_counter(EVEN_COUNTERS, cpu_id);
 init_counter(ODD_COUNTERS, cpu_id);
 return 0;
}
