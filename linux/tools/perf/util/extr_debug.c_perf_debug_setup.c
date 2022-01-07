
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int libapi_set_print (int ,int ,int ) ;
 int pr_debug_wrapper ;
 int pr_warning_wrapper ;

void perf_debug_setup(void)
{
 libapi_set_print(pr_warning_wrapper, pr_warning_wrapper, pr_debug_wrapper);
}
