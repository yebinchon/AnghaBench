
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_top {scalar_t__ drop; scalar_t__ lost; scalar_t__ guest_us_samples; scalar_t__ guest_kernel_samples; scalar_t__ exact_samples; scalar_t__ kernel_samples; scalar_t__ us_samples; scalar_t__ samples; } ;



void perf_top__reset_sample_counters(struct perf_top *top)
{
 top->samples = top->us_samples = top->kernel_samples =
 top->exact_samples = top->guest_kernel_samples =
 top->guest_us_samples = top->lost = top->drop = 0;
}
