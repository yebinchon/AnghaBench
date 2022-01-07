
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_9__ {TYPE_2__* ax25_dev; } ;
typedef TYPE_3__ ax25_cb ;
struct TYPE_7__ {int slave; } ;
struct TYPE_8__ {int* values; TYPE_1__ dama; } ;





 size_t AX25_VALUES_PROTOCOL ;
 TYPE_3__* ax25 ;
 int ax25_std_t2timer_expiry (TYPE_3__*) ;
 TYPE_3__* from_timer (int ,struct timer_list*,int ) ;
 int t2timer ;

__attribute__((used)) static void ax25_t2timer_expiry(struct timer_list *t)
{
 ax25_cb *ax25 = from_timer(ax25, t, t2timer);

 switch (ax25->ax25_dev->values[AX25_VALUES_PROTOCOL]) {
 case 128:
 case 129:
  ax25_std_t2timer_expiry(ax25);
  break;







 }
}
