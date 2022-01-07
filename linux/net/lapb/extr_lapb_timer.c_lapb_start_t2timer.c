
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expires; int function; } ;
struct lapb_cb {TYPE_1__ t2timer; scalar_t__ t2; } ;


 int add_timer (TYPE_1__*) ;
 int del_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int lapb_t2timer_expiry ;

void lapb_start_t2timer(struct lapb_cb *lapb)
{
 del_timer(&lapb->t2timer);

 lapb->t2timer.function = lapb_t2timer_expiry;
 lapb->t2timer.expires = jiffies + lapb->t2;

 add_timer(&lapb->t2timer);
}
