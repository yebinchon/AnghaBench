
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;


 int AMD_FAM14H_STATE_NUM ;
 int CLOCK_REALTIME ;
 int OVERFLOW_MS ;
 int * amd_fam14h_cstates ;
 int amd_fam14h_disable (int *,int) ;
 int clock_gettime (int ,struct timespec*) ;
 int cpu_count ;
 struct timespec dbg_time ;
 void* dbg_timediff ;
 int dprint (char*,void*) ;
 int print_overflow_err (unsigned int,int) ;
 struct timespec start_time ;
 int timediff ;
 void* timespec_diff_us (struct timespec,struct timespec) ;

__attribute__((used)) static int amd_fam14h_stop(void)
{
 int num, cpu;
 struct timespec end_time;

 clock_gettime(CLOCK_REALTIME, &end_time);

 for (num = 0; num < AMD_FAM14H_STATE_NUM; num++) {
  for (cpu = 0; cpu < cpu_count; cpu++)
   amd_fam14h_disable(&amd_fam14h_cstates[num], cpu);
 }





 timediff = timespec_diff_us(start_time, end_time);
 if (timediff / 1000 > OVERFLOW_MS)
  print_overflow_err((unsigned int)timediff / 1000000,
       OVERFLOW_MS / 1000);

 return 0;
}
