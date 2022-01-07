
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfcomm_dlc {int flags; int (* state_change ) (struct rfcomm_dlc*,int ) ;int state; scalar_t__ defer_setup; } ;


 int BT_CONNECT2 ;
 int RFCOMM_AUTH_PENDING ;
 int RFCOMM_AUTH_TIMEOUT ;
 int RFCOMM_DEFER_SETUP ;
 scalar_t__ rfcomm_check_security (struct rfcomm_dlc*) ;
 int rfcomm_dlc_accept (struct rfcomm_dlc*) ;
 int rfcomm_dlc_lock (struct rfcomm_dlc*) ;
 int rfcomm_dlc_set_timer (struct rfcomm_dlc*,int ) ;
 int rfcomm_dlc_unlock (struct rfcomm_dlc*) ;
 int set_bit (int ,int *) ;
 int stub1 (struct rfcomm_dlc*,int ) ;

__attribute__((used)) static void rfcomm_check_accept(struct rfcomm_dlc *d)
{
 if (rfcomm_check_security(d)) {
  if (d->defer_setup) {
   set_bit(RFCOMM_DEFER_SETUP, &d->flags);
   rfcomm_dlc_set_timer(d, RFCOMM_AUTH_TIMEOUT);

   rfcomm_dlc_lock(d);
   d->state = BT_CONNECT2;
   d->state_change(d, 0);
   rfcomm_dlc_unlock(d);
  } else
   rfcomm_dlc_accept(d);
 } else {
  set_bit(RFCOMM_AUTH_PENDING, &d->flags);
  rfcomm_dlc_set_timer(d, RFCOMM_AUTH_TIMEOUT);
 }
}
