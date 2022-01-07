
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NHM_CSTATE_COUNT ;
 int * current_count ;
 int free (int ) ;
 int is_valid ;
 int * previous_count ;

void intel_nhm_unregister(void)
{
 int num;

 for (num = 0; num < NHM_CSTATE_COUNT; num++) {
  free(previous_count[num]);
  free(current_count[num]);
 }
 free(is_valid);
}
