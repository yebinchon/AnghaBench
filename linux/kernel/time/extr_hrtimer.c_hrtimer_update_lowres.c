
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer {int is_rel; } ;
typedef int ktime_t ;
typedef enum hrtimer_mode { ____Placeholder_hrtimer_mode } hrtimer_mode ;


 int const HRTIMER_MODE_REL ;
 int hrtimer_resolution ;
 int ktime_add_safe (int ,int ) ;

__attribute__((used)) static inline ktime_t hrtimer_update_lowres(struct hrtimer *timer, ktime_t tim,
         const enum hrtimer_mode mode)
{
 return tim;
}
