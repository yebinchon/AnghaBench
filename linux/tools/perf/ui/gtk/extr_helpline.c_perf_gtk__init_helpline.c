
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gtk_helpline_fns ;
 int * helpline_fns ;

void perf_gtk__init_helpline(void)
{
 helpline_fns = &gtk_helpline_fns;
}
