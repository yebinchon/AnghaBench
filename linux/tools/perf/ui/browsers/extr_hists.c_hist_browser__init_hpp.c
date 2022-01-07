
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int color; } ;


 size_t PERF_HPP__OVERHEAD ;
 size_t PERF_HPP__OVERHEAD_ACC ;
 size_t PERF_HPP__OVERHEAD_GUEST_SYS ;
 size_t PERF_HPP__OVERHEAD_GUEST_US ;
 size_t PERF_HPP__OVERHEAD_SYS ;
 size_t PERF_HPP__OVERHEAD_US ;
 int hist_browser__hpp_color_overhead ;
 int hist_browser__hpp_color_overhead_acc ;
 int hist_browser__hpp_color_overhead_guest_sys ;
 int hist_browser__hpp_color_overhead_guest_us ;
 int hist_browser__hpp_color_overhead_sys ;
 int hist_browser__hpp_color_overhead_us ;
 TYPE_1__* perf_hpp__format ;
 int res_sample_init () ;

void hist_browser__init_hpp(void)
{
 perf_hpp__format[PERF_HPP__OVERHEAD].color =
    hist_browser__hpp_color_overhead;
 perf_hpp__format[PERF_HPP__OVERHEAD_SYS].color =
    hist_browser__hpp_color_overhead_sys;
 perf_hpp__format[PERF_HPP__OVERHEAD_US].color =
    hist_browser__hpp_color_overhead_us;
 perf_hpp__format[PERF_HPP__OVERHEAD_GUEST_SYS].color =
    hist_browser__hpp_color_overhead_guest_sys;
 perf_hpp__format[PERF_HPP__OVERHEAD_GUEST_US].color =
    hist_browser__hpp_color_overhead_guest_us;
 perf_hpp__format[PERF_HPP__OVERHEAD_ACC].color =
    hist_browser__hpp_color_overhead_acc;

 res_sample_init();
}
