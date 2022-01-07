
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HSW_EXT_CSTATE_COUNT ;
 int * current_count ;
 int free (int ) ;
 int is_valid ;
 int * previous_count ;

void hsw_ext_unregister(void)
{
 int num;
 free(is_valid);
 for (num = 0; num < HSW_EXT_CSTATE_COUNT; num++) {
  free(previous_count[num]);
  free(current_count[num]);
 }
}
