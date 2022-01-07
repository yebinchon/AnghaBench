
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AMD_FAM14H_STATE_NUM ;
 int CLOCK_REALTIME ;
 int * amd_fam14h_cstates ;
 int amd_fam14h_init (int *,int) ;
 int clock_gettime (int ,int *) ;
 int cpu_count ;
 int dbg_time ;
 int dbg_timediff ;
 int dprint (char*,int ) ;
 int start_time ;
 int timespec_diff_us (int ,int ) ;

__attribute__((used)) static int amd_fam14h_start(void)
{
 int num, cpu;
 clock_gettime(CLOCK_REALTIME, &start_time);
 for (num = 0; num < AMD_FAM14H_STATE_NUM; num++) {
  for (cpu = 0; cpu < cpu_count; cpu++)
   amd_fam14h_init(&amd_fam14h_cstates[num], cpu);
 }






 return 0;
}
