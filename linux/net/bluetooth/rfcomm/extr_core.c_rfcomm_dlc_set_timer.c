
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfcomm_dlc {int timer; int state; } ;


 int BT_DBG (char*,struct rfcomm_dlc*,int ,long) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int rfcomm_dlc_hold (struct rfcomm_dlc*) ;

__attribute__((used)) static void rfcomm_dlc_set_timer(struct rfcomm_dlc *d, long timeout)
{
 BT_DBG("dlc %p state %ld timeout %ld", d, d->state, timeout);

 if (!mod_timer(&d->timer, jiffies + timeout))
  rfcomm_dlc_hold(d);
}
