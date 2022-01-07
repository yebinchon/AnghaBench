
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer_cpu_base {int hres_active; } ;


 int CONFIG_HIGH_RES_TIMERS ;
 scalar_t__ IS_ENABLED (int ) ;

__attribute__((used)) static inline int __hrtimer_hres_active(struct hrtimer_cpu_base *cpu_base)
{
 return IS_ENABLED(CONFIG_HIGH_RES_TIMERS) ?
  cpu_base->hres_active : 0;
}
