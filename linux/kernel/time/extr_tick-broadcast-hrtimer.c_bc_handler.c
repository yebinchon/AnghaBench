
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hrtimer {int dummy; } ;
typedef enum hrtimer_restart { ____Placeholder_hrtimer_restart } hrtimer_restart ;
struct TYPE_3__ {int (* event_handler ) (TYPE_1__*) ;} ;


 int HRTIMER_NORESTART ;
 TYPE_1__ ce_broadcast_hrtimer ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static enum hrtimer_restart bc_handler(struct hrtimer *t)
{
 ce_broadcast_hrtimer.event_handler(&ce_broadcast_hrtimer);

 return HRTIMER_NORESTART;
}
