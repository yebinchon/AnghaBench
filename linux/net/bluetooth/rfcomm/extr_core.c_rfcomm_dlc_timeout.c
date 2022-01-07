
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct rfcomm_dlc {int flags; int state; } ;


 int BT_DBG (char*,struct rfcomm_dlc*,int ) ;
 int RFCOMM_TIMED_OUT ;
 struct rfcomm_dlc* d ;
 struct rfcomm_dlc* from_timer (int ,struct timer_list*,int ) ;
 int rfcomm_dlc_put (struct rfcomm_dlc*) ;
 int rfcomm_schedule () ;
 int set_bit (int ,int *) ;
 int timer ;

__attribute__((used)) static void rfcomm_dlc_timeout(struct timer_list *t)
{
 struct rfcomm_dlc *d = from_timer(d, t, timer);

 BT_DBG("dlc %p state %ld", d, d->state);

 set_bit(RFCOMM_TIMED_OUT, &d->flags);
 rfcomm_dlc_put(d);
 rfcomm_schedule();
}
