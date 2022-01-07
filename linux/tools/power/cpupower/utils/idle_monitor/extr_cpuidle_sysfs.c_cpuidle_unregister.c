
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_count ;
 int ********* current_count ;
 int free (int *********) ;
 int ********* previous_count ;

void cpuidle_unregister(void)
{
 int num;

 for (num = 0; num < cpu_count; num++) {
  free(previous_count[num]);
  free(current_count[num]);
 }
 free(previous_count);
 free(current_count);
}
