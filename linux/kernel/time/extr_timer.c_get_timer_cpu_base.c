
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct timer_base {int dummy; } ;


 size_t BASE_DEF ;
 size_t BASE_STD ;
 int CONFIG_NO_HZ_COMMON ;
 scalar_t__ IS_ENABLED (int ) ;
 int TIMER_DEFERRABLE ;
 struct timer_base* per_cpu_ptr (int *,int) ;
 int * timer_bases ;

__attribute__((used)) static inline struct timer_base *get_timer_cpu_base(u32 tflags, u32 cpu)
{
 struct timer_base *base = per_cpu_ptr(&timer_bases[BASE_STD], cpu);





 if (IS_ENABLED(CONFIG_NO_HZ_COMMON) && (tflags & TIMER_DEFERRABLE))
  base = per_cpu_ptr(&timer_bases[BASE_DEF], cpu);
 return base;
}
