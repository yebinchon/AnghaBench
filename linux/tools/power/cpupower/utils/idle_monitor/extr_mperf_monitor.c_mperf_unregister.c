
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int aperf_current_count ;
 int aperf_previous_count ;
 int free (int ) ;
 int is_valid ;
 int mperf_current_count ;
 int mperf_previous_count ;

void mperf_unregister(void)
{
 free(mperf_previous_count);
 free(aperf_previous_count);
 free(mperf_current_count);
 free(aperf_current_count);
 free(is_valid);
}
