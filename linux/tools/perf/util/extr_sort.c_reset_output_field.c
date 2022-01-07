
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dso; scalar_t__ sym; scalar_t__ parent; scalar_t__ need_collapse; } ;


 int * field_order ;
 int perf_hpp__reset_output_field (TYPE_1__*) ;
 TYPE_1__ perf_hpp_list ;
 int reset_dimensions () ;
 int * sort_order ;

void reset_output_field(void)
{
 perf_hpp_list.need_collapse = 0;
 perf_hpp_list.parent = 0;
 perf_hpp_list.sym = 0;
 perf_hpp_list.dso = 0;

 field_order = ((void*)0);
 sort_order = ((void*)0);

 reset_dimensions();
 perf_hpp__reset_output_field(&perf_hpp_list);
}
