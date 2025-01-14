
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hrtimer_cpu_base {TYPE_1__* clock_base; int clock_was_set_seq; } ;
typedef void* ktime_t ;
struct TYPE_2__ {void* offset; } ;


 size_t HRTIMER_BASE_BOOTTIME ;
 size_t HRTIMER_BASE_BOOTTIME_SOFT ;
 size_t HRTIMER_BASE_REALTIME ;
 size_t HRTIMER_BASE_REALTIME_SOFT ;
 size_t HRTIMER_BASE_TAI ;
 size_t HRTIMER_BASE_TAI_SOFT ;
 void* ktime_get_update_offsets_now (int *,void**,void**,void**) ;

__attribute__((used)) static inline ktime_t hrtimer_update_base(struct hrtimer_cpu_base *base)
{
 ktime_t *offs_real = &base->clock_base[HRTIMER_BASE_REALTIME].offset;
 ktime_t *offs_boot = &base->clock_base[HRTIMER_BASE_BOOTTIME].offset;
 ktime_t *offs_tai = &base->clock_base[HRTIMER_BASE_TAI].offset;

 ktime_t now = ktime_get_update_offsets_now(&base->clock_was_set_seq,
         offs_real, offs_boot, offs_tai);

 base->clock_base[HRTIMER_BASE_REALTIME_SOFT].offset = *offs_real;
 base->clock_base[HRTIMER_BASE_BOOTTIME_SOFT].offset = *offs_boot;
 base->clock_base[HRTIMER_BASE_TAI_SOFT].offset = *offs_tai;

 return now;
}
