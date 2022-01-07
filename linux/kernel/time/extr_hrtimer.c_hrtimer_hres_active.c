
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __hrtimer_hres_active (int ) ;
 int hrtimer_bases ;
 int this_cpu_ptr (int *) ;

__attribute__((used)) static inline int hrtimer_hres_active(void)
{
 return __hrtimer_hres_active(this_cpu_ptr(&hrtimer_bases));
}
