
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct timer_base {int dummy; } ;


 int TIMER_CPUMASK ;
 struct timer_base* get_timer_cpu_base (int,int) ;

__attribute__((used)) static inline struct timer_base *get_timer_base(u32 tflags)
{
 return get_timer_cpu_base(tflags, tflags & TIMER_CPUMASK);
}
